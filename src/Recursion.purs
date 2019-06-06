module Recursion where

import Prelude

import Data.Array (null)
import Data.Array.Partial (head, tail)
import Partial.Unsafe (unsafePartial)


even :: Int -> Boolean
even x = if x `mod` 2 == 1 then true else false

countEven :: Array Int -> Int
countEven xs = 
  if null xs 
    then 0
    else 
      if even (unsafePartial head xs)
        then 1 + countEven (unsafePartial tail xs)
        else countEven (unsafePartial tail xs)
        