{-# LANGUAGE TypeSynonymInstances #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE Arrows #-}
module ConcreteSemantics where

import WhileLanguage

import Data.Map (Map)
import qualified Data.Map as M
import Data.Text (Text)

import Control.Monad.State
import Control.Monad.Except
import Control.Arrow
import Control.Arrow.Fail

data Val = BoolVal Bool | NumVal Double
type Store = Map Text Val
type M = StateT Store (Except String)

runConcrete :: Kleisli M [Statement] ()
runConcrete = run

instance ArrowFail String (Kleisli M) where
  failA = Kleisli $ \e -> throwError e
          
instance Run (Kleisli M) Val where
  fixRun f = voidA $ mapA $ f (fixRun f)

  store = Kleisli $ \(x,v) -> modify (M.insert x v)

  if_ f1 f2 = proc (v,(x,y)) -> case v of
    BoolVal True -> f1 -< x
    BoolVal False -> f2 -< y
    _ -> failA -< "Expected boolean as argument for 'if'"

instance Eval (Kleisli M) Val where
  lookup = Kleisli $ \x -> do
    env <- get
    case M.lookup x env of
      Just v -> return v
      Nothing -> throwError "variable not found"

  boolLit = arr BoolVal

  and = proc (v1,v2) -> case (v1,v2) of
    (BoolVal b1,BoolVal b2) -> returnA -< BoolVal (b1 && b2)
    _ -> failA -< "Expected two booleans as arguments for 'and'"

  or = proc (v1,v2) -> case (v1,v2) of
    (BoolVal b1,BoolVal b2) -> returnA -< BoolVal (b1 || b2)
    _ -> failA -< "Expected two booleans as arguments for 'or'"
  
  not = proc v -> case v of
    BoolVal b -> returnA -< BoolVal (Prelude.not b)
    _ -> failA -< "Expected a boolean as argument for 'not'"

  numLit = arr NumVal

  add = proc (v1,v2) -> case (v1,v2) of
    (NumVal n1,NumVal n2) -> returnA -< NumVal (n1 + n2)
    _ -> failA -< "Expected two numbers as arguments for 'add'"

  sub = proc (v1,v2) -> case (v1,v2) of
    (NumVal n1,NumVal n2) -> returnA -< NumVal (n1 - n2)
    _ -> failA -< "Expected two numbers as arguments for 'sub'"

  mul = proc (v1,v2) -> case (v1,v2) of
    (NumVal n1,NumVal n2) -> returnA -< NumVal (n1 * n2)
    _ -> failA -< "Expected two numbers as arguments for 'mul'"

  div = proc (v1,v2) -> case (v1,v2) of
    (NumVal n1,NumVal n2) -> returnA -< NumVal (n1 / n2)
    _ -> failA -< "Expected two numbers as arguments for 'mul'"

  eq = proc (v1,v2) -> case (v1,v2) of
    (NumVal n1,NumVal n2)   -> returnA -< BoolVal (n1 == n2)
    (BoolVal b1,BoolVal b2) -> returnA -< BoolVal (b1 == b2)
    _ -> failA -< "Expected two values of the same type as arguments for 'eq'"

  fixEval f = f (fixEval f)
