module Main where

main :: IO ()
main = print . sum . filter (odd) . takeWhile (<4000000) $ fib

fib :: [Integer]
fib = 0 : 1 : zipWith (+) fib (tail fib)
