{-# LANGUAGE GADTs #-}

import Data.Foldable (traverse_)

data T where
  MkT :: Show a => { getT :: a } -> T
  -- defines a type 'T' with
  -- an existentially - typed field 'getT'

xs = [MkT 5 , MkT "String"]

-- f :: T -> String
f MkT { getT = a } = show a

main = traverse_ putStr ( fmap f xs )
-- prints : 5" hello "
-- 'fmap f xs' applies 'f' to each 'x' in 'xs'
-- and collects the results
-- 'traverse_ action values' performs 'action'
-- on each 'value' in 'values'
