{-# OPTIONS_GHC -Wno-type-defaults #-}

module Main where

main :: IO ()
main = print . head $ getPrimeFactors 600851475143 [3 ..] []

getPrimeFactors :: Integral a => a -> [a] -> [a] -> [a]
getPrimeFactors number arr factors
  | number `quotRem` current == (1, 0) = current : factors
  | number `mod` current == 0 = getPrimeFactors (number `div` head arr) arr (current : factors)
  | otherwise = getPrimeFactors number (tail arr) factors
  where
    current = head arr
