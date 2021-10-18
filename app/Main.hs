module Main where

import Lib1Test
import Lib2Test
import Lib3Test


main :: IO ()
main = print (myListSum [2, 5, 10, 20, 3, 8])
