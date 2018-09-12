module Average where

avg :: [Float] -> Float
avg [] = 0
avg x = sum x / fromIntegral (length x)

