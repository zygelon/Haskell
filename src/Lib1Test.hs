{-# LANGUAGE MultiWayIf #-}

module Lib1Test where


{-
export example
module Lib1Test
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
-- Recursive too slow
ifFibonacci2 n | n < 0      = Nothing
ifFibonacci2 0              = Just 0
ifFibonacci2 1              = Just 1
ifFibonacci2 n              = let Just f1 = ifFibonacci (n - 1)
                                  Just f2 = ifFibonacci (n - 2)
                              in Just (f1 + f2)



testBinomial n k | k < 0        = Nothing
testBinomial n k | n < 0        = Nothing
testBinomial n 0                = Just 1
testBinomial n k | n == k       = Just 1
testBinomial n k                = let Just f1 = testBinomial (n - 1) (k - 1)
                                      Just f2 = testBinomial (n - 1) k
                                  in Just $ f1 + f2



testBinomial2 _ 0 = 1
testBinomial2 x y | x == y = 1
testBinomial2 n k = testBinomial2 (n - 1) (k - 1) + testBinomial2 (n - 1) k


testAckermann 0 n             = n + 1
testAckermann m 0 | m > 0     = testAckermann (m - 1) 1
testAckermann m n             = let insideAckermann = testAckermann m (n - 1)
                                in testAckermann (m - 1) insideAckermann

--myListSum list =  accumSum 0 list  --- Eta Reduce
myListSum :: [Integer] -> Integer 
myListSum =  accumSum 0
  where accumSum :: Integer -> [Integer] -> Integer
        accumSum sumVal [] = sumVal
        accumSum sumVal (x:xs) =
          accumSum (sumVal + x) xs

-- Anonymous Func | map (\x -> x + 2) [1, 2, 3]

multiplyByN :: Integer -> (Integer -> Integer)
multiplyByN n = \x -> n * x
-- Example :: map (multiplyByN 5) [1, 2, 3] = [5, 10, 15]

filterANumber :: Integer -> [Integer] -> [Integer]
filterANumber n list = filter (\x -> x == n) list

filterNot :: (a -> Bool) -> [a] -> [a]
filterNot func (x:xs) | not $ func x      = x : filterNot func xs
                      | otherwise         = filterNot func xs
filterNot _ [] = []
-- Example :: print $ filterNot even [2,4,3,423,5,5,6,23,42,36,2,467,43,54,23]

myUglyBubbleSort :: [Int] -> [Int]
myUglyBubbleSort [] = []
myUglyBubbleSort arr =
  let internalRes = internalSort arr
      lastElem = last internalRes
    in myUglyBubbleSort (init internalRes) ++ [lastElem]
    where internalSort :: [Int] -> [Int]
          internalSort (x1:x2:xs)  | null xs = if x1 < x2 then x1:x2:xs else x2:x1:xs
          internalSort (x1:x2:xs) = if x1 > x2 then x2:internalSort (x1:xs)
                                    else x1 : internalSort(x2:xs)
          internalSort (x1:xs) = x1:xs
          internalSort [] = []
