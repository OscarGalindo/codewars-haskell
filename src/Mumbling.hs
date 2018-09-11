module Mumbling where

import Data.Char

mumbling :: [Char] -> [Char]
mumbling "" = ""
mumbling [x] = (:[]) $ toUpper x
mumbling [x:xs] = (mumbling x) ++ "-" ++ (mumbling xs)
