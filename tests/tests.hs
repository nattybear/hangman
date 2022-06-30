module Main where

import Hangman
import Test.Hspec

main :: IO ()
main = hspec $ do
  let puzzle = freshPuzzle "hello"
  describe "fillInCharacter" $ do
    it "fillInCharacter" $ do
      fillInCharacter puzzle 'h'
      `shouldBe`
      Puzzle "hello" [ Just 'h'
                     , Nothing
                     , Nothing
                     , Nothing
                     , Nothing ] "h"
    it "handleGuess" $ do
      p <- handleGuess puzzle 'h'
      p `shouldBe` p
