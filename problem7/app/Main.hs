{-# LANGUAGE TypeApplications #-}

module Main where

main :: IO ()
main = print $ primes !! 10000

primes :: [Integer]
primes = 2 : filter primalityTest [3, 5 ..]
 where
  primalityTest x =
    notElem 0
      . fmap (rem x)
      $ [2 .. round @Double . sqrt . fromIntegral $ x]