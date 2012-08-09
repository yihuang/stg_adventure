module Test where

test :: Int -> Int -> Int
test a b = a + b + 1
{-# NOINLINE test #-}

test1 :: Int -> String
test1 a = show a
