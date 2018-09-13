module CroquetClubCategorizeMember where
    
data Membership = Open 
                | Senior
                deriving (Eq, Show)

openOrSenior :: [(Int, Int)] -> [Membership]
openOrSenior = error "todo: openOrSenior"