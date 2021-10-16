{-# LANGUAGE MultiWayIf #-}

module Lib2 where

import Data.Char

testLocalVar :: Int -> String
testLocalVar num =
    let north = 0
        east  = 1
        south = 2
        west  = 3
        wtf strangeVal = if strangeVal > 10 then "Strange WTF" else "not Strange WTF"
        in
    if | num == north -> "north"
       | num == south -> "south"
       | num == west  -> "west"
       | num == east  -> "east"
       | otherwise    -> (wtf num)

-- import Data.Char :: toUpper, chr 
testCharFunc :: String
testCharFunc = 
    let a = 'a'
        b = 'b'
        randLetter = 'w'
    --[] converts Char -> Ttring
    in [toUpper a] ++ " " ++ [toUpper b] ++ " " ++ [chr(124)] ++ " " ++ [randLetter]

-- import Data.Ratio
-- toRational Float -> Ratio
-- FromRational Ratio -> Float
-- FromInteger, ToInteger

--write in ghci ":t anyVal" to see types
