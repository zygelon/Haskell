module Main where

import Lib
import Lib2

import Data.Ratio

main :: IO ()
main = print (maxmin [1,5,2,10,20,-2])
