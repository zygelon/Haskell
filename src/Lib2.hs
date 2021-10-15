{-# LANGUAGE MultiWayIf #-}

module Lib2 where


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

