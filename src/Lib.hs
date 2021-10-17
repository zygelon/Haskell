{-# LANGUAGE MultiWayIf #-}

module Lib where


{-
export example
module Lib
    ( evenTestPrint,
      testMultyIf,
      testMultyIf2,
      testMultyIf3
    ) where
-}

--This Comment

{-
  This comment too
-}

mySquare :: Int -> Int
mySquare v = v * v

mySum :: Int -> Int -> Int
mySum a b = a + b

checkEven :: Int -> String
checkEven a = if even a then "Even" else "Odd"

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
     | otherwise -> "uknown1"

testMultyIf2 :: Int -> String
testMultyIf2 num
     | num == 0 = "zero"
     | num == 1 = "one"
     | num == 2 = "two"
     | num == 3 = "three"
     | num == 4 = "four"
     | otherwise = "uknown2"


testMultyIf3 0 = "zero"
testMultyIf3 1 = "one"
testMultyIf3 2 = "two"
testMultyIf3 3 = "three"
testMultyIf3 4 = "four"
testMultyIf3 _ = "uknown3"

testMultyIf4 :: Int -> String
testMultyIf4 val =
  case val of
    0 -> "zero"
    1 -> "one"
    2 -> "two"
    3 -> "three"
    4 -> "four"
    _ -> "uknown4"

testFuncForm :: String -> String -> String
testFuncForm first second =
  if testFunc1 first second && testFunc2 second first
    then "test ret true"
    else "test ret false"
    where testFunc1 a b = a == b
          testFunc2 a2 b2 = a2 == b2

ifFibonacci :: Integer -> Maybe Integer
ifFibonacci n = if n < 0
    then Nothing
    else case n of
        0 -> Just 0
        1 -> Just 1
        -- n' means prime
        n' -> let Just f1 = ifFibonacci (n' - 1)
                  Just f2 = ifFibonacci (n' - 2)
             in Just (f1 + f2)
