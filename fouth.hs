module Test where

data Test = Test1 String
          | Test2 Int

test :: Int -> Int -> Test
test a b = Test2 (a+b)
{-# NOINLINE test #-}

test1 :: Int -> Test
test1 a = case test 1 (a+1) of
             Test2 a -> Test1 "hello"
