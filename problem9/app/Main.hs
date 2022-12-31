module Main where

import Data.List (find)
import Data.Maybe (fromJust)
import Text.Printf (printf)

main :: IO ()
main = printf "%f\n" . mul . fromJust . find check $ [1 :: Double .. 998]
  where
    check a = isInt (b a) && isInt (c a) && a < b a && b a < c a
    b a = (1000000 - 2000 * a) / (2000 - 2 * a)
    c a = 1000 - a - b a
    isInt number = number == fromInteger (round number)
    mul a = a * b a * c a
