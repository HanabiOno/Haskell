-- runhaskell FunctionsSpec.hs
module FunctionsSpec where

import Test.Hspec
-- cabal install hspec --lib
import Functions
-- import Main
import Test.QuickCheck
-- cabal install QuickCheck --lib
import Control.Exception (evaluate)

main :: IO ()
main = hspec $ do
  describe "Sum list" $ do
    it "empty" $ do
      (sum' []) `shouldBe` 0
    it "one item" $ do
      (sum' [1]) `shouldBe` 1
    it "more than one item" $ do
      (sum' [6,3,7,4,5]) `shouldBe` 25

  describe "all-true one-true" $ do
    it "empty" $ do
      (alltrue' []) `shouldBe` True
    it "one true" $ do
      (alltrue' [False,False,False,True]) `shouldBe` False
    it "all true" $ do
      (alltrue' [True,True,True,True]) `shouldBe` True

    it "empty" $ do
      (onetrue' []) `shouldBe` False
    it "one true" $ do
      (onetrue' [True,False,False,False]) `shouldBe` True
    it "all true" $ do
      (onetrue' [True,True,True,True]) `shouldBe` True

  describe "cat" $ do
    it "empty" $ do
      (cat' []) `shouldBe` ""
    it "hello + + world" $ do
      (cat' ["hello"," ","world"]) `shouldBe` "hello world"

  describe "infsup" $ do
    it "max" $ do
       (infsup' [1..40] max) `shouldBe` 40
    it "min" $ do
       (infsup' [1..40] min )`shouldBe` 1
