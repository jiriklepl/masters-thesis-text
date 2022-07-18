{-# LANGUAGE GADTs #-}

import Data.Foldable (traverse_)

data T where
  MkT :: Show a => { getT :: a } -> T
  -- defines a type 'T' with
  -- an existentially - typed field 'getT'

xs = [MkT 5 , MkT "String"]

-- f :: T -> String
f MkT { getT = a } = show a

-- prints : 5" hello "
main = traverse_ putStr ( fmap f xs )
