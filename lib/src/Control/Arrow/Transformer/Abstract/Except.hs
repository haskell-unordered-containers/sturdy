{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE Arrows #-}
{-# LANGUAGE GADTs #-}
module Control.Arrow.Transformer.Abstract.Except(ExceptT(..)) where

import Prelude hiding (id,lookup,(.),read,fail)

import Control.Arrow
import Control.Arrow.Const
import Control.Arrow.Deduplicate
import Control.Arrow.Environment as Env
import Control.Arrow.Fail
import Control.Arrow.Trans
import Control.Arrow.Reader
import Control.Arrow.State
import Control.Arrow.Store as Store
import Control.Arrow.Except
import Control.Arrow.Fix
import Control.Arrow.Abstract.Join
import Control.Category

import Data.Abstract.Error
import Data.Monoidal
import Data.Order

newtype ExceptT e c x y = ExceptT { runExceptT :: c x (Error e y)}

instance ArrowTrans (ExceptT e) where
  type Dom1 (ExceptT e) x y = x
  type Cod1 (ExceptT e) x y = Error e y
  lift = ExceptT
  unlift = runExceptT

instance ArrowLift (ExceptT e) where
  lift' f = ExceptT (f >>> arr Success)

instance (ArrowChoice c, ArrowJoin c, Complete e) => Category (ExceptT e c) where
  id = lift' id
  f . g = lift $ proc x -> do
    y <- unlift g -< x
    case y of
      Success y' -> unlift f -< y'
      Fail e -> returnA -< Fail e
      SuccessOrFail e y' -> do
        -- Ideally we would like to write '(returnA -< Fail e) ⊔ (f -< y)',
        -- however this is not possible, because the result type of
        -- 'f', 'UncertainError e z', is not 'Complete' because 'z' is not
        -- 'Complete'. However, in '(returnA -< Fail e) ⊔ (f -< y)' we
        -- actually never join to values of type 'z'.
        joinWith (\(Fail e) er -> case er of
            Success z          -> SuccessOrFail e z
            Fail e'            -> Fail (e ⊔ e')
            SuccessOrFail e' z -> SuccessOrFail (e ⊔ e') z)
          id (unlift f) -< (Fail e,y')

instance (ArrowChoice c, ArrowJoin c, Complete e) => Arrow (ExceptT e c) where
  arr f = lift' (arr f)
  first f = lift $ first (unlift f) >>^ strength1
  second f = lift $ second (unlift f) >>^ strength2

instance (Complete e, ArrowJoin c, ArrowChoice c) => ArrowChoice (ExceptT e c) where
  left f = lift $ left (unlift f) >>^ strength1
  right f = lift $ right (unlift f) >>^ strength2

instance (Complete e, ArrowJoin c, ArrowApply c, ArrowChoice c) => ArrowApply (ExceptT e c) where
  app = lift $ first unlift ^>> app

instance (Complete e, ArrowJoin c, ArrowChoice c, ArrowState s c) => ArrowState s (ExceptT e c) where
  get = lift' get
  put = lift' put

instance (Complete e, ArrowJoin c, ArrowChoice c, ArrowStore var val c) => ArrowStore var val (ExceptT e c) where
  type Join (ExceptT e c) x y = Store.Join c (Dom1 (ExceptT e) x y) (Cod1 (ExceptT e) x y)
  read (ExceptT f) (ExceptT g) = ExceptT $ read f g
  write = lift' write

instance (Complete e, ArrowJoin c, ArrowChoice c, ArrowFail f c) => ArrowFail f (ExceptT e c) where
  fail = lift' fail
         

instance (Complete e, ArrowJoin c, ArrowChoice c, ArrowReader r c) => ArrowReader r (ExceptT e c) where
  ask = lift' ask
  local f = lift (local (unlift f))

instance (Complete e, ArrowJoin c, ArrowChoice c, ArrowEnv x y env c) => ArrowEnv x y env (ExceptT e c) where
  type Join (ExceptT e c) x y = Env.Join c (Dom1 (ExceptT e) x y) (Cod1 (ExceptT e) x y)
  lookup f g = lift $ lookup (unlift f) (unlift g)
  getEnv = lift' getEnv
  extendEnv = lift' extendEnv
  localEnv f = lift (localEnv (unlift f))

instance (ArrowChoice c, Complete e, ArrowJoin c) => ArrowExcept e (ExceptT e c) where
  type Join (ExceptT e c) (x,(x,e)) y = Complete (c (y,(x,e)) (Error e y))
  throw = lift $ arr Fail
  catch f g = lift $ proc x -> do
    e <- unlift f -< x
    case e of
      Success y          -> returnA -< Success y
      SuccessOrFail er y -> joined (arr Success) (unlift g) -< (y,(x,er))
      Fail er            -> unlift g -< (x,er)
  finally f g = lift $ proc x -> do
    e <- unlift f -< x
    unlift g -< x
    returnA -< e

instance (Complete e, ArrowJoin c, ArrowChoice c, ArrowFix (Dom1 (ExceptT e) x y) (Cod1 (ExceptT e) x y) c) => ArrowFix x y (ExceptT e c) where
  fix = liftFix

instance (Complete e, ArrowJoin c, ArrowChoice c) => ArrowDeduplicate x y (ExceptT e c) where
  dedup = returnA

instance (Complete e, ArrowJoin c, ArrowChoice c, ArrowConst r c) => ArrowConst r (ExceptT e c) where
  askConst = lift' askConst

instance (Complete e, ArrowJoin c, ArrowChoice c) => ArrowJoin (ExceptT e c) where
  joinWith lub' f g = ExceptT $ joinWith (\r1 r2 -> case (r1, r2) of
    (Success y1,          Success y2)          -> Success (y1 `lub'` y2)
    (Success y1,          SuccessOrFail e y2)  -> SuccessOrFail e (y1 `lub'` y2)
    (Success y,           Fail e)              -> SuccessOrFail e y
    (SuccessOrFail e y1,  Success y2)          -> SuccessOrFail e (y1 `lub'` y2)
    (SuccessOrFail e1 y1, SuccessOrFail e2 y2) -> SuccessOrFail (e1 ⊔ e2) (y1 `lub'` y2)
    (SuccessOrFail e1 y,  Fail e2)             -> SuccessOrFail (e1 ⊔ e2) y
    (Fail e,              Success y)           -> SuccessOrFail e y
    (Fail e1,             SuccessOrFail e2 y)  -> SuccessOrFail (e1 ⊔ e2) y
    (Fail e1,             Fail e2)             -> Fail (e1 ⊔ e2)
    ) (unlift f) (unlift g)

deriving instance PreOrd (c x (Error e y)) => PreOrd (ExceptT e c x y)
deriving instance LowerBounded (c x (Error e y)) => LowerBounded (ExceptT e c x y)
deriving instance Complete (c x (Error e y)) => Complete (ExceptT e c x y)
deriving instance CoComplete (c x (Error e y)) => CoComplete (ExceptT e c x y)
deriving instance UpperBounded (c x (Error e y)) => UpperBounded (ExceptT e c x y)
