module Main where

import Hangman
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "fillInCharacter" $ do
    it "fillInCharacter" $ do
      fillInCharacter (freshPuzzle "hello") 'h'
      `shouldBe`
      Puzzle "hello" [ Just 'h'
                     , Nothing
                     , Nothing
                     , Nothing
                     , Nothing ] "h"
