module Pangram (isPangram) where
import Data.Char (toLower)

isPangram :: String -> Bool
isPangram text = 
    let alphabet       = ['a'..'z']
        normalizedText = map toLower text
    in 
        all (\c -> c `elem` normalizedText) alphabet
