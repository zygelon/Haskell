{-# LANGUAGE MultiWayIf #-}
module Lib
    ( evenTestPrint,
      testMultyIf
    ) where


--This Comment

{-
  This comment too
-}

mySquare :: Int -> Int
mySquare v = v * v

mySum :: Int -> Int -> Int 
mySum a b = a + b

checkEven :: Int -> String
checkEven a = if a `mod` 2 == 0 then "Even" else "Odd"

evenTestPrint :: IO ()
evenTestPrint = print (checkEven 5 ++ " " ++ checkEven 6)

testMultyIf :: Int -> String
testMultyIf num =
  if | num == 0 -> "zero"
     | num == 1 -> "one"
     | num == 2 -> "two"
     | num == 3 -> "three"
     | num == 4 -> "four"
     | otherwise -> "uknown"


printFunc :: IO ()
printFunc = putStrLn "HI HASKELL"
