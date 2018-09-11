module MumblingSpec (main, spec) where

import Test.Hspec

import Mumbling

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "mumbling" $ do
    describe "empty string" $ do
      it "return empty string" $ do
        mumbling "" `shouldBe` ""
    describe "single char" $ do
      it "return char capitalized" $ do
        mumbling "a" `shouldBe` "A"
    describe "ab" $ do
      it "returns A-Bb " $ do
        mumbling "ab" `shouldBe` "A-Bb"
