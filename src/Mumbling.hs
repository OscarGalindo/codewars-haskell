module Mumbling where

import Data.Char

accum :: String -> String
accum [] = ""
accum [x] = (:[]) $ toUpper x
accum (x:xs) = repeatAndUpperFirst 0 x ++ "-" ++ loop xs 1
                where 
                    loop [x] n = repeatAndUpperFirst n x
                    loop (x:xs) n = repeatAndUpperFirst n x ++ "-" ++ loop xs (n + 1)

repeatAndUpperFirst :: Int -> Char -> String
repeatAndUpperFirst i c = toUpper c : replicate i (toLower c)