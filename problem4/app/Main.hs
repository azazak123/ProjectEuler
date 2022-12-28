{-# OPTIONS_GHC -Wno-type-defaults #-}

module Main where

main :: IO ()
main =
  print
    . maximum
    . filter checkPalindrome
    . concatMap ((<$> [100 .. 999]) . (*))
    $ [100 .. 999]

checkPalindrome :: Show a => a -> Bool
checkPalindrome number = show number == reverse (show number)
