module Main where

import Lib1Test
import Lib2Test
import Lib3Test

main = do
    print "What's your name?"
    name <- getLine 
    print name