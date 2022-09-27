module Main where

import Prelude

import Data.List (List(..), reverse, tail, (:))
import Data.Maybe (fromMaybe)
import Effect (Effect)
import Effect.Console (log)

singleton :: forall a. a -> List a
singleton n = Cons n Nil

null :: forall a. List a -> Boolean
null Nil = true
null _ = false

snoc :: forall a. List a -> a -> List a
snoc l n = reverse (Cons n (reverse l))

length :: forall a. List a -> Int
length Nil = 0
length n = 1 + (length $ fromMaybe Nil $ tail n)


main :: Effect Unit
main = do
  log $ show $ singleton 1
  log $ show $ null Nil
  log $ show $ null (1 : 2 : Nil)
  log $ show $ snoc (1 : 2 : Nil) 3
  log $ show $ length (1 : 2 : 3 : Nil) 