module CroquetClubCategorizeMemberSpec where
    import CroquetClubCategorizeMember (openOrSenior, Membership (Open, Senior))
    import Control.Applicative
    import Test.Hspec
    import Test.QuickCheck
    
    main :: IO ()
    main = hspec spec

    spec :: Spec
    spec = 
      describe "membership" $ do
        describe "on empty input" $ it "return empty output" $ openOrSenior [] `shouldBe` []
        describe "on less 55 years" $ it "return open" $
          openOrSenior [(18,20)] `shouldBe` [Open]
        describe "on equal 55" $ it "return senior" $ 
          openOrSenior [(55,20)] `shouldBe` [Senior]
        describe "on greater than 55" $ it "return senior" $ 
          openOrSenior [(56,8)] `shouldBe` [Senior]
        describe "gt 55 and handicap less than 7" $ it "return open" $
          openOrSenior [(56,5)] `shouldBe` [Open]
        describe "on multiple values" $ it "return list of category" $ 
          openOrSenior [(55,7),(55,8),(54,9)] `shouldBe` [Open, Senior, Open]
        
        it "should work on some random lists, single membership type list" $
          let k al au hl hu m =
                property $ forAll (listOf $ (,) <$> choose (al,au) <*> choose (hl,hu)) $ \xs ->
                  openOrSenior xs `shouldSatisfy` all (==m)
          in conjoin [ k 55 100    8 26 Senior
                     , k  0 100 (-2)  7 Open
                     ]