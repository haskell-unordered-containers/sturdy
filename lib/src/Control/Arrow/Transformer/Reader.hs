{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE Arrows #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE ScopedTypeVariables #-}
module Control.Arrow.Transformer.Reader(ReaderT(..)) where

import Prelude hiding (id,(.),lookup,read,fail)

import Control.Arrow
import Control.Arrow.Const
import Control.Arrow.Conditional as Cond
import Control.Arrow.Environment as Env
import Control.Arrow.Fail
import Control.Arrow.Fix
import Control.Arrow.Reader
import Control.Arrow.Store as Store
import Control.Arrow.State
import Control.Arrow.Deduplicate
import Control.Arrow.Except as Exc
import Control.Arrow.Trans
import Control.Arrow.Writer
import Control.Arrow.Utils
import Control.Arrow.Abstract.Join
import Control.Category

import Data.Order hiding (lub)
import Data.Monoidal
import Data.Soundness

-- Due to "Generalising Monads to Arrows", by John Hughes, in Science of Computer Programming 37.
newtype ReaderT r c x y = ReaderT { runReaderT :: c (r,x) y }
type instance Dom (ReaderT r c) x y = Dom c (r,x) y
type instance Cod (ReaderT r c) x y = Cod c (r,x) y

instance Sound c c' => Sound (ReaderT r c) (ReaderT r' c') where
  sound (ReaderT f) (ReaderT g) = sound f g

instance ArrowTrans (ReaderT r) where
  type Dom1 (ReaderT r) x y = (r,x)
  type Cod1 (ReaderT r) x y = y
  lift = ReaderT
  unlift = runReaderT

instance ArrowLift (ReaderT r) where
  lift' f = ReaderT (pi2 >>> f)

instance Arrow c => Category (ReaderT r c) where
  id    = lift' id
  f . g = lift $ (\(r,x) -> (r,(r,x))) ^>> unlift f . second (unlift g)

instance Arrow c => Arrow (ReaderT r c) where
  arr f    = lift' (arr f)
  first f  = lift $ (\(r,(b,d)) -> ((r,b),d)) ^>> first (unlift f)
  second f = lift $ (\(r,(b,d)) -> (b,(r,d))) ^>> second (unlift f)
  f &&& g  = lift $ unlift f &&& unlift g
  f *** g  = lift $ (\(r,(b,d)) -> ((r,b),(r,d))) ^>> unlift f *** unlift g

instance ArrowChoice c => ArrowChoice (ReaderT r c) where
  left f  = lift $ to distribute ^>> mmap id pi2  ^>> left (unlift f)
  right f = lift $ to distribute ^>> mmap pi2 id ^>> right (unlift f)
  f +++ g = lift $ to distribute ^>> unlift f +++ unlift g
  f ||| g = lift $ to distribute ^>> unlift f ||| unlift g

instance ArrowApply c => ArrowApply (ReaderT r c) where
  app = lift $ (\(r,(f,b)) -> (unlift f,(r,b))) ^>> app

instance Arrow c => ArrowReader r (ReaderT r c) where
  ask = lift pi1
  local f = lift $ (\(_,(r,x)) -> (r,x)) ^>> unlift f

instance ArrowState s c => ArrowState s (ReaderT r c) where
  get = lift' get
  put = lift' put

instance ArrowWriter w c => ArrowWriter w (ReaderT r c) where
  tell = lift' tell

instance ArrowFail e c => ArrowFail e (ReaderT r c) where
  fail = lift' fail

instance ArrowEnv var val env c => ArrowEnv var val env (ReaderT r c) where
  type instance Join (ReaderT r c) ((val,x),x) y = Env.Join c ((val,Dom1 (ReaderT r) x y),Dom1 (ReaderT r) x y) (Cod1 (ReaderT r) x y)
  lookup f g = lift $ (\(r,(v,a)) -> (v,(r,a))) ^>> lookup ((\(v,(r,a)) -> (r,(v,a))) ^>> unlift f) (unlift g)
  getEnv     = lift' getEnv
  extendEnv  = lift' extendEnv
  localEnv f = lift ((\(r,(env,a)) -> (env,(r,a))) ^>> localEnv (unlift f))

instance ArrowStore var val c => ArrowStore var val (ReaderT r c) where
  type instance Join (ReaderT r c) ((val,x),x) y = Store.Join c ((val,Dom1 (ReaderT r) x y),Dom1 (ReaderT r) x y) (Cod1 (ReaderT r) x y)
  read f g = lift $ (\(r,(v,a)) -> (v,(r,a))) ^>> read ((\(v,(r,a)) -> (r,(v,a))) ^>> unlift f) (unlift g)
  write = lift' write

instance ArrowFix (Dom1 (ReaderT r) x y) (Cod1 (ReaderT r) x y) c => ArrowFix x y (ReaderT r c) where
  fix = liftFix

instance ArrowExcept e c => ArrowExcept e (ReaderT r c) where
  type instance Join (ReaderT r c) (x,(x,e)) y = Exc.Join c ((r,x),((r,x),e)) y
  throw = lift' throw
  catch (ReaderT f) (ReaderT g) = ReaderT $ catch f (from assoc ^>> g)
  finally (ReaderT f) (ReaderT g) = ReaderT $ finally f g

instance ArrowDeduplicate (r, x) y c => ArrowDeduplicate x y (ReaderT r c) where
  dedup (ReaderT f) = ReaderT (dedup f)

instance ArrowJoin c => ArrowJoin (ReaderT r c) where
  joinWith lub (ReaderT f) (ReaderT g) = ReaderT $ (\(r,(x,y)) -> ((r,x),(r,y))) ^>> joinWith lub f g

instance ArrowConst x c => ArrowConst x (ReaderT r c) where
  askConst = lift' askConst

instance ArrowCond v c => ArrowCond v (ReaderT r c) where
  type instance Join (ReaderT r c) (x,y) z = Cond.Join c ((r,x),(r,y)) z
  if_ (ReaderT f) (ReaderT g) = ReaderT $ (\(r,(v,(x,y))) -> (v,((r,x),(r,y)))) ^>> if_ f g

deriving instance PreOrd (c (r,x) y) => PreOrd (ReaderT r c x y)
deriving instance LowerBounded (c (r,x) y) => LowerBounded (ReaderT r c x y)
deriving instance Complete (c (r,x) y) => Complete (ReaderT r c x y)
deriving instance CoComplete (c (r,x) y) => CoComplete (ReaderT r c x y)
deriving instance UpperBounded (c (r,x) y) => UpperBounded (ReaderT r c x y)
