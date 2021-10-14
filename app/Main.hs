module Main where

import Lib
import Lib2

main :: IO ()
main = putStrLn ((testLocalVar 5) ++ "   " ++ (testLocalVar 1) ++ "\n" ++ testLocalVar 20)

