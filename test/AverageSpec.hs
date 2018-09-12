module AverageSpec (main, spec) where

import Test.Hspec

import Average

main :: IO ()
main = hspec spec

spec :: Spec
spec = 
  describe "avg" $ do
    describe "empty list" $  it "returns 0" $ avg [] `shouldBe` 0
    describe "single value" $  it "returns the value" $ avg [1] `shouldBe` 1
    describe "two values" $  it "returns the average" $ avg [1, 3] `shouldBe` 2
    describe "any values" $  it "returns the average" $ avg [1, 2, 3, 4, 5] `shouldBe` 3