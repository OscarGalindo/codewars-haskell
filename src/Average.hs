module Average where

avg :: [Float] -> Float
avg [] = 0
avg x = foldl (+) 0 x / (fromIntegral $ length x)

