module Main where

import Text.Printf (printf)

main :: IO ()
main =
  printf "%f\n" $ (((1 :: Double) + 100) * 100 / 2) ** 2 - (100 * 101 * 201) / 6