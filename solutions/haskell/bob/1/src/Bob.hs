module Bob (responseFor) where

import Data.Char (isSpace, isLetter, isUpper, isLower)
import Data.List (dropWhileEnd)

responseFor :: String -> String
responseFor xs 
        -- 1. 检查沉默 (必须在所有检查之前)
      | isSilence xs        = "Fine. Be that way!"
  -- 2. 检查最具体的组合：大喊一个问题
      | isYelledQuestion xs = "Calm down, I know what I'm doing!"
  -- 3. 检查是否在 YELLING (大喊)
      | isYelling xs        = "Whoa, chill out!"
  -- 4. 检查是否是普通问题
      | isQuestion xs       = "Sure."
  -- 5. 其他所有情况
      | otherwise           = "Whatever."

      where
          isSilence = all isSpace
          isYelling s = any isLetter s && not (any isLower s)
          isQuestion s = let trimed = dropWhileEnd isSpace s in last trimed == '?'
          isYelledQuestion s  = isYelling s && isQuestion s
          
