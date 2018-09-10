module AverageSpec (main, spec) where

import Test.Hspec
import Test.QuickCheck

import Average

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "avg" $ do
    describe "empty list" $ do
      it "returns 0" $ do
        avg [] `shouldBe` 0
    describe "single value" $ do
      it "returns the value" $ do
        avg [1] `shouldBe` 1
    describe "two values" $ do
      it "returns the average" $ do
        avg [1,3] `shouldBe` 2
    describe "any values" $ do
      it "returns the average" $ do
        avg [1,2,3,4,5] `shouldBe` 3
