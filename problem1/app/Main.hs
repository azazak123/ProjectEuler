{-# OPTIONS_GHC -Wno-type-defaults #-}

module Main where

main :: IO ()
main =
  print $
    (3 + 999) * (999 / 3) / 2
      + (5 + 995) * (995 / 5) / 2 -- arithmetic progression (d = 3, sum multiples of 3)
      - (15 + 990) * (990 / 15) / 2 -- arithmetic progression (d = 5, sum multiples of 5)
      -- arithmetic progression (d = 15, sum multiples of 3 and 5)
