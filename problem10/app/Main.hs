{-# LANGUAGE TupleSections #-}
{-# LANGUAGE TypeApplications #-}

module Main where

import qualified Data.Vector as Vec

main :: IO ()
main = print . Vec.sum . primes $ (2000000 :: Int)

-- Sieve of Sundaram
primes :: Integral a => a -> Vec.Vector a
primes n =
  Vec.cons 2
    . Vec.tail
    . Vec.filter (/= 0)
    . (Vec.//) arr
    . map (,0)
    $ [ i + j + 2 * i * j
        | i <- [1 .. floor @Double $ (sqrt (fromIntegral n) - 1) / 2],
          j <- [i .. floor @Double $ (m - fromIntegral i) / (2 * fromIntegral i + 1)]
      ]
  where
    arr = Vec.generate (floor m + 1) ((+ 1) . (* 2) . fromIntegral)
    m = (fromIntegral n - 1) / 2
