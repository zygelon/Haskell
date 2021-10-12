module Lib
    ( someFunc
    ) where


--This Comment

{-
  This comment too
-}

mySquare :: Int -> Int
mySquare v = v * v

mySum :: Int -> Int -> Int 
mySum a b = a + b

someFunc :: IO ()
someFunc = putStrLn "HI HASKELL"
