{-# LANGUAGE TypeApplications #-}

module Main where

main :: IO ()
main =
  print @Double $
    (3 + 999) * (999 / 3) / 2 -- arithmetic progression (d = 3, sum multiples of 3)
      + (5 + 995) * (995 / 5) / 2 -- arithmetic progression (d = 5, sum multiples of 5)
      - (15 + 990) * (990 / 15) / 2 -- arithmetic progression (d = 15, sum multiples of 3 and 5)
