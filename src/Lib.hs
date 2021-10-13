{-# LANGUAGE MultiWayIf #-}
module Lib
    ( evenTestPrint,
      testMultyIf,
      testMultyIf2,
      testMultyIf3
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

-- | names Guard
-- extension to use it {-# LANGUAGE MultiWayIf #-}
testMultyIf :: Int -> String
testMultyIf num =
  if | num == 0 -> "zero"
     | num == 1 -> "one"
     | num == 2 -> "two"
     | num == 3 -> "three"
     | num == 4 -> "four"
     | otherwise -> "uknown"

testMultyIf2 :: Int -> String
testMultyIf2 num
     | num == 0 = "zero"
     | num == 1 = "one"
     | num == 2 = "two"
     | num == 3 = "three"
     | num == 4 = "four"
     | otherwise = "uknown"

testMultyIf3 :: Int -> String
testMultyIf3 0 = "zero"
testMultyIf3 1 = "one"
testMultyIf3 2 = "two"
testMultyIf3 3 = "three"
testMultyIf3 4 = "four"
testMultyIf3 _ = "uknown"

printFunc :: IO ()
printFunc = putStrLn "HI HASKELL"
