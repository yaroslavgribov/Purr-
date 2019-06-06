module Data.Even where
  
import Prelude

even :: Int -> Boolean
even 1 = false
even 2 = true
even n = even (n - 2)