{-# LANGUAGE Arrows                     #-}
{-# LANGUAGE FlexibleContexts           #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE StandaloneDeriving         #-}
{-# LANGUAGE TypeSynonymInstances       #-}

{-# LANGUAGE FunctionalDependencies     #-}
{-# LANGUAGE MultiParamTypeClasses      #-}
module SharedInterpreter where

import           Prelude             hiding (break, lookup, map, read, fail)
import qualified Prelude

import           Control.Arrow
import           Control.Arrow.Alloc
import           Control.Arrow.Conditional as Cond
import           Control.Arrow.Environment as Env
import           Control.Arrow.Except as Exc
import           Control.Arrow.Fail
import           Control.Arrow.Fix
import           Control.Arrow.Store as Store
import           Control.Arrow.Utils

import qualified Data.Label as Lab
import           Data.String

import           Text.Printf

import           Syntax

-- TODO
-- This typeclass can be split up into multiple to partially reuse implementations across interpreters
-- But this might not save effort if the implementation is completely different.

class Arrow c => JSOps v env addr c | c -> v, c -> env, c -> addr where
    -- simple values
    numVal :: c Double v
    boolVal :: c Bool v
    stringVal :: c String v
    undefVal :: c () v
    nullVal :: c () v
    evalOp :: c (Op, [v]) v

    -- closures
    closureVal :: c (env, [Ident], Expr) v
    -- | applies a closure to an argument. The given continuation
    -- describes how to evaluated the body of the closure.
    applyClosure :: c ((env, [Ident], Expr),[v]) v -> c (v, [v]) v

    -- objects
    objectVal :: c [(Ident, v)] v
    getField :: c (v, v) v
    updateField :: c (v, v, v) v
    deleteField :: c (v, v) v

    -- store ops
    ref :: c addr v
    withRef :: c (e,(addr,v)) x -> c (e,v) x -> c (e,v) x 

    -- control flow
    label :: c Expr v -> c (Label, Expr) v
    break :: c (Label, v) v

withRef' :: (JSOps v env addr c, ArrowFail f c, IsString f, Show v) => c (e,(addr,v)) x -> c (e,v) x 
withRef' f = withRef f (proc (_,refVal) -> fail -< fromString $ printf "Not a reference %s" (show refVal))


eval :: (JSOps v env addr c,
         ArrowChoice c,
         ArrowFix Expr v c,
         ArrowCond v c,
         ArrowEnv Ident v env c,
         ArrowFail f c, IsString f,
         ArrowExcept v c,
         ArrowStore addr v c, ArrowAlloc (Lab.Label,v) addr c,
         Show v, Show addr,
         Cond.Join c (Expr, Expr) v,
         Env.Join c ((v,Ident),Ident) v,
         Store.Join c ((v, addr), addr) v,
         Exc.Join c ((Expr, Expr), ((Expr, Expr), v)) v
        ) => c Expr v
eval = fix $ \ev -> proc e -> do
    case e of
        -- simple value expressions
        ENumber d -> numVal -< d
        EString s -> stringVal -< s
        EBool b -> boolVal -< b
        EUndefined -> undefVal -< ()
        ENull -> nullVal -< ()
        EOp op exps -> do
            vals <- map ev -< exps
            evalOp -< (op, vals)

        -- closure expressions
        ELambda ids ex -> do
            env <- getEnv -< ()
            closureVal -< (env, ids, ex)
        EApp fun args -> do
            funVal <- ev -< fun
            argVals <- map ev -< args
            (applyClosure $ evalBody ev) -< (funVal, argVals)

        -- object eexpressions
        EObject fields -> do
            vals <- map (second ev) -< fields
            objectVal -< vals
        EGetField objE fieldE -> do
            obj <- ev -< objE
            field <- ev -< fieldE
            getField -< (obj, field)
        EUpdateField objE fieldE valE -> do
            obj <- ev -< objE
            field <- ev -< fieldE
            val <- ev -< valE
            updateField -< (obj, field, val)
        EDeleteField objE fieldE -> do
            obj <- ev -< objE
            field <- ev -< fieldE
            deleteField -< (obj, field)

        -- environment related expressions
        EId ident -> lookup' -< ident
        ELet varArgs body -> do
            varVals <- map (second ev) -< varArgs
            env <- getEnv -< ()
            env' <- bindings -< (varVals, env)
            localEnv ev -< (env', body)

        -- store related expressions
        ERef lab exp -> do
            val <- ev -< exp
            addr <- alloc -< (lab, val)
            write -< (addr, val)
            ref -< addr
        EDeref exp -> do
            refVal <- ev -< exp
            withRef' (proc (_, (a, _)) -> read' -< a) -< ((), refVal)
        ESetRef lhs rhs -> do
            refVal <- ev -< lhs
            rhsVal <- ev -< rhs
            withRef' (proc (rhsVal, (a, refVal)) -> do
                        write -< (a, rhsVal)
                        returnA -< refVal)
                     -< (rhsVal,refVal)

        -- control related expressions
        ESeq e1 e2 -> do
            ev -< e1
            ev -< e2
        EIf condE thenE elseE -> do
            v <- ev -< condE
            if_ ev ev -< (v, (thenE, elseE))
        EWhile cond body -> do
            ev -< EIf cond (ESeq body e) EUndefined
        ELabel l ex -> do
            label ev -< (l, ex)
        EBreak l ex -> do
            val <- ev -< ex
            break -< (l, val)

        -- exception related expressions
        EThrow ex -> do
            val <- ev -< ex
            throw -< val
        ECatch tryE catchE -> do
            catch (pi1 >>> ev) (evalCatch ev)  -< (tryE, catchE)
        EFinally e1 e2 ->
            finally (pi1 >>> ev) (pi2 >>> ev) -< (e1, e2)

        -- self-eval expression
        EEval -> fail -< fromString "Encountered EEval"

    where
      evalBody ev = proc ((env, vars, body), argVals) -> do
        env' <- bindings -< (zip vars argVals, env)
        localEnv ev -< (env', body)

      evalCatch ev = proc ((_,catchE), v) -> case catchE of
         ELambda [x] e -> extendEnv' ev -< (x, v, e)
         _ -> fail -< fromString $ printf "Catch block must be a lambda expression with one parameter, but was %s" (show catchE)


