-- Copyright (c) 2018, Michael D. Adams
--
-- All rights reserved.
--
-- Redistribution and use in source and binary forms, with or without
-- modification, are permitted provided that the following conditions are met:
--
--     * Redistributions of source code must retain the above copyright
--       notice, this list of conditions and the following disclaimer.
--
--     * Redistributions in binary form must reproduce the above
--       copyright notice, this list of conditions and the following
--       disclaimer in the documentation and/or other materials provided
--       with the distribution.
--
--     * Neither the name of Michael D. Adams nor the names of other
--       contributors may be used to endorse or promote products derived
--       from this software without specific prior written permission.
--
-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
-- "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
-- LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
-- A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
-- OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
-- SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
-- LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
-- DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
-- THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
-- (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
-- OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

{-# LANGUAGE OverloadedLists #-}
{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TupleSections #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE UndecidableInstances #-}
module Data.Abstract.TreeGrammar
( Grammar
, IsGrammar
, grammar
, union
, intersection
, epsilonClosure
, dropUnreachable
, dropUnproductive
, productive
, determinize
, subsetOf
, subsetOf'
, toSubterms
, fromSubterms
, isEmpty
)
where

import           Prelude hiding (lookup,repeat)

import           Control.Arrow
import           Control.Monad.State
import           Control.Monad.Writer
import           Control.Monad.Reader

import           Data.Maybe
import           Data.Hashable
import           Data.HashMap.Lazy (HashMap)
import qualified Data.HashMap.Lazy as Map
import           Data.HashSet (HashSet)
import qualified Data.HashSet as Set
import           Data.Foldable
import qualified Data.List as L
import           Data.Order
import           Data.OrdMap(OrdMap)
import qualified Data.OrdMap as O
import qualified Data.Abstract.Either as A

import           Data.Abstract.TreeGrammar.NonTerminal
import           Data.Abstract.TreeGrammar.Terminal (Terminal)
import qualified Data.Abstract.TreeGrammar.Terminal as T

import           Text.Printf


type Identifiable a = (Hashable a, Eq a)

data Grammar n t = Grammar { start :: n, prods :: ProdMap n t }
type ProdMap n t = HashMap n (Rhs n t)
data Rhs n t = Rhs { cons :: t n, eps :: HashSet n }
type IsGrammar n t = (Terminal t, Monoid (t n), NonTerminal n, Identifiable n)

grammar :: (IsGrammar n t, Monoid (t String))
        => String -> [(String,t String)] -> [(String,[String])] -> Grammar n t
grammar s prods eps = generate
                    $ rename
                    $ Grammar s
                    $ Map.fromListWith (<>)
                    $ [ (n,Rhs c mempty) | (n,c) <- prods ]
                   ++ [ (n,Rhs mempty (Set.fromList es)) | (n,es) <- eps]


rename :: (Identifiable n, IsGrammar n' t) => Grammar n t -> State (Gen n') (Grammar n' t)
rename g = do
  i <- get
  let ((s'',p'),(i',_)) = runState (do
        s' <- go (start g)
        prods' <- traverse (\(n,r) -> do
                      n' <- go n
                      c' <- T.traverse go (cons r)
                      e' <- traverse go (Set.toList (eps r))
                      return (n',Rhs c' (Set.fromList e')))
                    (Map.toList (prods g))
        return (s',Map.fromList prods'))
        (i,mempty)
  put i'
  return $ Grammar s'' p'
  where
    go :: (Identifiable n, NonTerminal n') => n -> State (Gen n', HashMap n n') n'
    go n = do
      (_,rmap) <- get
      case Map.lookup n rmap of
        Just x -> return x
        Nothing -> do
          n' <- fresh' Nothing
          modify $ second $ Map.insert n n'
          return n'

union :: forall n1 n2 n' t. (IsGrammar n1 t, IsGrammar n2 t, IsGrammar n' t)
      => Grammar n1 t -> Grammar n2 t -> Grammar n' t
union g1 g2 = generate $ do
  i <- get
  let (s',(_,(ps,_))) = runState (go (A.LeftRight (start g1) (start g2))) (i,(mempty,emptyRenameMap))
  return $ Grammar s' ps
  where
    go :: A.Either n1 n2 -> State (Gen n', (ProdMap n' t, RenameMap n1 n2 n')) n'
    go n = do
      m <- getRenameMap
      case n of
        A.Left  n1 -> addProduction n $ T.traverse (go . A.Left) (lookup n1 g1)
        A.Right n2 -> addProduction n $ T.traverse (go . A.Right) (lookup n2 g2)
        A.LeftRight n1 n2 ->
          case O.compare n1 n2 (ordMap m) of
            Just O.LessThan     -> go (A.Right n2)
            Just O.GreaterThan  -> go (A.Left n1)
            Just O.Incomparable -> addProduction n $ T.union go (lookup n1 g1) (lookup n2 g2)
            Nothing -> do
              updateOrdMap g1 g2 n1 n2
              go (A.LeftRight n1 n2)
      

intersection :: forall n1 n2 n' t. (IsGrammar n1 t, IsGrammar n2 t, Monoid (t n1), Monoid (t n2), IsGrammar n' t)
             => Grammar n1 t -> Grammar n2 t -> Grammar n' t
intersection g1 g2 = generate $ do
  i <- get
  let (s',(_,(ps,_))) = runState (go (A.LeftRight (start g1) (start g2))) (i,(mempty,emptyRenameMap))
  return $ Grammar s' ps
  where
    go :: A.Either n1 n2 -> State (Gen n', (ProdMap n' t, RenameMap n1 n2 n')) n'
    go n = do
      m <- getRenameMap
      case n of
        A.Left  n1 -> addProduction n $ T.traverse (go . A.Left) (lookup n1 g1)
        A.Right n2 -> addProduction n $ T.traverse (go . A.Right) (lookup n2 g2)
        A.LeftRight n1 n2 ->
          case O.compare n1 n2 (ordMap m) of
            Just O.LessThan     -> go (A.Left n1)
            Just O.GreaterThan  -> go (A.Right n2)
            Just O.Incomparable -> addProduction (A.LeftRight n1 n2)
                                 $ T.intersection (go . uncurry A.LeftRight) (lookup n1 g1) (lookup n2 g2)
            Nothing -> do
              updateOrdMap g1 g2 n1 n2
              go (A.LeftRight n1 n2)

-- | Inlines all productions reachable via epsilon rules.
epsilonClosure :: (Identifiable n, IsGrammar n t) => Grammar n t -> Grammar n t
epsilonClosure g = g { prods = Map.mapWithKey close (prods g) }
  where
    close name _ =
      Rhs { cons = lookup name g
          , eps = Set.empty
          }

lookup :: forall n t. IsGrammar n t => n -> Grammar n t -> t n
lookup n = lookup' ([n] :: [n])

lookup' :: (Foldable f, IsGrammar n t) => f n -> Grammar n t -> t n
lookup' n g@(Grammar _ p) = cons $ foldMap (\k -> fold (Map.lookup k p)) $ epsilonReachable n g

-- Computes the set of non-terminals reachable via epsilon rules.
epsilonReachable :: (Foldable f, IsGrammar n t) => f n -> Grammar n t -> HashSet n
epsilonReachable ns (Grammar _ p) = foldl' go Set.empty ns
  where
    go r n
      | Set.member n r = r
      | otherwise      = foldl' go (Set.insert n r) (eps (fold (Map.lookup n p)))

-- | Removes productions that are not reachable from the start symbol.
dropUnreachable :: (IsGrammar n t) => Grammar n t -> Grammar n t
dropUnreachable g =
  let reach = reachable' (start g) g
  in g { prods = Map.filterWithKey (\k _ -> Set.member k reach) (prods g) }

reachable :: (Foldable f, IsGrammar n t) => f n -> Grammar n t -> HashSet n
reachable ns g = foldl' go Set.empty ns
  where
    go r n = let rhs = fold (Map.lookup n (prods g))
             in foldl' go (Set.insert n r) ((T.nonTerminals (cons rhs) <> eps rhs) `Set.difference` r)

reachable' :: forall t n. IsGrammar n t => n -> Grammar n t -> HashSet n
reachable' n = reachable ([n] :: [n])

dropUnproductive :: IsGrammar n t => Grammar n t -> Grammar n t
dropUnproductive g =
  g { prods = Map.mapMaybeWithKey
                  (\k r -> if Set.member k (productive g)
                            then Just (r { cons = T.filter (`Set.member` (productive g)) (cons r)
                                         , eps  = Set.intersection (eps r) (productive g) })
                            else Nothing)
                  (prods g)
    }

isEmpty :: (Eq (t n), IsGrammar n t) => Grammar n t -> Bool
isEmpty g = let g' = dropUnproductive g
            in lookup (start g') g' == mempty

-- | Returns all productive nonterminals in the given grammar.
productive :: forall n t. IsGrammar n t => Grammar n t -> HashSet n
productive (Grammar _ prods) = go $ Set.fromList [ n | (n, rhs) <- Map.toList prods, T.productive mempty (cons (rhs))]
  where
    go :: HashSet n -> HashSet n
    go p =
      let p' = Set.union p $ Set.fromList [ n | (n, rhs) <- Map.toList prods, rhsProductive rhs p ]
      in if p == p' then p else go p'

    -- A right hand side is productive if one of its epsilon rules is
    -- productive or a all non-terminals of a constructor are productive.
    rhsProductive :: Rhs n t -> HashSet n -> Bool
    rhsProductive rhs prod = any (`Set.member` prod) (eps rhs)
                          || T.productive prod (cons rhs)

determinize :: forall n n' t. (IsGrammar n t, IsGrammar n' t) => Grammar n t -> Grammar n' t
determinize g = generate $ do
  i <- get
  let (s',(_,(ps,_))) = runState (go [start g]) (i,(mempty,mempty))
  return $ Grammar s' ps
 where
   -- go {N1,N2,N3}
   --    [ N1 -> foo(A1,B1) | bar(B1)
   --      N2 -> foo(A2,B2) | bar(B2)
   --      N3 -> foo(A3,B3) | baz(B3)
   --      ...
   --    ]
   -- = [ N1 U N2 U N3 -> foo(A1 U A2 U A3, B1 U B2 U B3) | bar(B1 U B2) | biz(B3) ... ]
   go :: HashSet n -> State (Gen n', (ProdMap n' t,HashMap (HashSet n) n')) n'
   go ns = do
     rmap <- getRenameMap
     case Map.lookup ns rmap of
       Just x -> return x
       Nothing -> do
         n <- fresh' Nothing
         putRenameMap $ Map.insert ns n rmap
         ctrs <- T.determinize go (lookup' ns g)
         result $ Map.insert n (Rhs { cons = ctrs, eps = mempty})
         return n

getRenameMap :: State (a,(b,rmap)) rmap
getRenameMap = snd . snd <$> get

putRenameMap :: rmap -> State (a,(b,rmap)) ()
putRenameMap r = modify (second (second (const r)))

result :: (res -> res) -> State (a,(res,rmap)) ()
result f = modify (second (first f))

subsetOf :: (IsGrammar n1 t, IsGrammar n2 t) => Grammar n1 t -> Grammar n2 t -> Bool
subsetOf m1 m2 = isJust $ subsetOf' m1 m2 mempty

subsetOf' :: forall n1 n2 t. (IsGrammar n1 t, IsGrammar n2 t)
         => Grammar n1 t -> Grammar n2 t -> OrdMap n1 n2 -> Maybe (OrdMap n1 n2)
subsetOf' g1 g2 m = execStateT (go [(start g1,start g2)]) m
  where
    go :: [(n1,n2)] -> StateT (OrdMap n1 n2) Maybe ()
    go l = forM_ l $ \(m1,m2) -> do
      seen <- get
      case O.compare m1 m2 seen of
        Just O.LessThan -> return ()
        Just O.Incomparable -> fail ""
        _ -> do
          put $ O.insert m1 m2 O.LessThan seen
          T.subsetOf go (lookup m1 g1) (lookup m2 g2)

supersetOf' :: forall n1 n2 t. (IsGrammar n1 t, IsGrammar n2 t)
            => Grammar n1 t -> Grammar n2 t -> OrdMap n1 n2 -> Maybe (OrdMap n1 n2)
supersetOf' g1 g2 m = execStateT (go [(start g2,start g1)]) m
  where
    go :: [(n2,n1)] -> StateT (OrdMap n1 n2) Maybe ()
    go l = forM_ l $ \(m2,m1) -> do
      seen <- get
      case O.compare m1 m2 seen of
        Just O.GreaterThan -> return ()
        Just O.Incomparable -> fail ""
        _ -> do
          put $ O.insert m1 m2 O.GreaterThan seen
          T.subsetOf go (lookup m2 g2) (lookup m1 g1)


toSubterms :: (IsGrammar n t, Monoid (t Int)) => Grammar n t -> t (Grammar n t)
toSubterms g = T.map (\n -> g {start = n})
                     (lookup (start g) g)

-- OPT: deduplicate grammar.
fromSubterms :: IsGrammar n t => t (Grammar n t) -> Grammar n t
fromSubterms t = generate $ do
  s <- fresh Nothing
  (t',p) <- runWriterT $ T.traverse (\b -> do
              g <- lift (rename b)
              tell (prods g)
              return (start g)
            ) t
  return $ Grammar s $ Map.insert s (Rhs t' mempty) p

instance IsGrammar n t => Eq (Grammar n t) where
  b1 == b2 = subsetOf b1 b2 && subsetOf b2 b1

instance forall n t. (IsGrammar n t, Monoid (t Int)) => Hashable (Grammar n t) where
  hashWithSalt s0 b =
    let g = determinize b :: Grammar Int t
    in runReader (go g s0 (start g)) 3
    where
      go :: forall n' t'. IsGrammar n' t' => Grammar n' t' -> Int -> n' -> Reader Int Int
      go g s n = do
        fuel <- ask
        if fuel <= 0
        then return $ hashWithSalt s (0 :: Int)
        else local (\f -> f - 1) (T.hashWithSalt (go g) s (lookup n g))

instance IsGrammar n t => PreOrd (Grammar n t) where
  (⊑) = subsetOf

instance IsGrammar n t => Complete (Grammar n t) where
  g1 ⊔ g2 = union g1 g2

instance IsGrammar n t => CoComplete (Grammar n t) where
  g1 ⊓ g2 = intersection g1 g2

instance (UpperBounded (t String), Monoid (t String), IsGrammar n t) => UpperBounded (Grammar n t) where
  top = grammar "S" [("S",top)] []

instance (Identifiable n, Semigroup (t n)) => Semigroup (Rhs n t) where
  Rhs c1 e1 <> Rhs c2 e2 = Rhs (c1 <> c2) (e1 <> e2)
instance (Identifiable n, Monoid (t n)) => Monoid (Rhs n t) where
  mappend = (<>)
  mempty = Rhs { cons = mempty, eps = mempty }

instance (Show n, Show (t n)) => Show (Grammar n t) where
  show (Grammar s p) = printf "{start = %s, prods = [%s]}" (show s)
                              (L.intercalate ", " [ printf "%s -> %s" (show n) (show t) | (n,t) <- Map.toList p ])

instance (Show n, Show (t n)) => Show (Rhs n t) where
  show rhs = L.intercalate " | " $ show (cons rhs) : (map show (Set.toList (eps rhs)))

data RenameMap n1 n2 n' = RenameMap
  { ordMap    :: OrdMap n1 n2
  , renameMap :: HashMap (A.Either n1 n2) n'
  }

emptyRenameMap :: RenameMap n1 n2 n'
emptyRenameMap = RenameMap O.empty Map.empty

addProduction :: (NonTerminal n', Identifiable n1, Identifiable n2, Identifiable n') => A.Either n1 n2 -> State (Gen n', (ProdMap n' t, RenameMap n1 n2 n')) (t n') -> State (Gen n', (ProdMap n' t, RenameMap n1 n2 n')) n'
addProduction n g = do
  m <- getRenameMap
  case Map.lookup n (renameMap m) of
    Just n' -> return n'
    Nothing -> do
      n' <- fresh' Nothing
      putRenameMap $ m { renameMap = Map.insert n n' (renameMap m) }
      ctrs <- g
      result $ Map.insert n' (Rhs { cons = ctrs, eps = mempty}) 
      return n'

updateOrdMap :: (IsGrammar n1 t, IsGrammar n2 t) => Grammar n1 t -> Grammar n2 t -> n1 -> n2 -> State (a, (b, RenameMap n1 n2 n')) ()
updateOrdMap g1 g2 n1 n2 = do
  m <- getRenameMap
  let g1' = g1 { start = n1 }
      g2' = g2 { start = n2 }
      ordMap' = case (subsetOf' g1' g2' (ordMap m), supersetOf' g1' g2' (ordMap m)) of
        (Just ord,_)      -> ord
        (_,Just ord)      -> ord
        (Nothing,Nothing) -> O.insert n1 n2 O.Incomparable (ordMap m)
  putRenameMap $ m {ordMap = ordMap'}
