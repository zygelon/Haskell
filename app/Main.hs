module Main where

import Lib

main :: IO ()
main = print (testMultyIf4 0 ++ " " ++ testMultyIf4 2 ++ " " ++ testMultyIf4 6 ++ " " ++ testMultyIf4 3)
