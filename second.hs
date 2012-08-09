module Test where

test :: Int -> Int
test a = a + 1
{-# NOINLINE test #-}

test1 :: Int -> Int
test1 a = test a + 1
