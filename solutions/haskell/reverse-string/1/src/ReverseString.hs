module ReverseString (reverseString) where

reverseString :: String -> String
reverseString [] = []
reverseString (c : s) = reverseString s  ++  [c] 
