module CroquetClubCategorizeMember where

data Membership = Open 
                | Senior
                deriving (Eq, Show)

openOrSenior :: [(Int, Int)] -> [Membership]
openOrSenior = map check
        where check (x, y) | x >= 55 && y > 7 = Senior
                           | otherwise = Open