module Main where

import Lib1Test
import Lib2Test
import Lib3Test



main = print $ filterNot even [2,4,3,423,5,5,6,23,42,36,2,467,43,54,23]
