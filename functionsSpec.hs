module functionsSpec where

import Test.Hspec
import functions

spec :: Spec
spec = do
  describe "Sum list" $ do
    it "empty" $ do
      (sum' []) `shouldBe` 0
    it "one item" $ do
      (sum' [1]) `shouldBe` 1
    it "more than one item" $ do
      (sum' [6,3,7,4,5]) `shouldBe` 25
