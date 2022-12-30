module Main where

main :: IO ()
main =
  print
    . maximum
    . filter checkPalindrome
    $ [i * j | i <- [100 :: Int .. 999], j <- [100 .. 999]]

checkPalindrome :: Show a => a -> Bool
checkPalindrome number = show number == reverse (show number)
