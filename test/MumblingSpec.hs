module MumblingSpec (main, spec) where

import Test.Hspec

import Mumbling

main :: IO ()
main = hspec spec

spec :: Spec
spec = 
  describe "mumbling" $ do
    describe "empty string" $ it "return empty string" $ accum "" `shouldBe` ""
    describe "single char" $ it "return char capitalized" $ accum "a" `shouldBe` "A"
    describe "ab" $ it "returns A-Bb " $ accum "ab" `shouldBe` "A-Bb"
    describe "abc" $ it "returns A-Bb-Ccc " $ accum "abc" `shouldBe` "A-Bb-Ccc"
    describe "repeat n times" $ it "should return replicated string" $ repeatAndUpperFirst 3 'a' `shouldBe` "Aaaa"
    describe "if char is uppercase" $ it "should convert to lower case" $ accum "ZpglnRxqenU" `shouldBe` "Z-Pp-Ggg-Llll-Nnnnn-Rrrrrr-Xxxxxxx-Qqqqqqqq-Eeeeeeeee-Nnnnnnnnnn-Uuuuuuuuuuu"

