module Main where

import Lib

main :: IO ()
main = print (testMultyIf 0 ++ " " ++ testMultyIf 1 ++ " " ++ testMultyIf 6)
