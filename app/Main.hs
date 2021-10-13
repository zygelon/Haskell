module Main where

import Lib

main :: IO ()
main = print (testMultyIf3 0 ++ " " ++ testMultyIf3 2 ++ " " ++ testMultyIf3 6 ++ " " ++ testMultyIf3 3)
