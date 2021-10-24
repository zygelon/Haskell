{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE BlockArguments #-}

module Lib3Test where
import GHC.Enum (Enum(succ))
--import Data.Bifunctor (bimap)

data ClientR = GovOrgR { clientRName :: String }
             | CompanyR { clientRName :: String
                        , companyId :: Integer
                        , person :: PersonR
                        , duty :: String }
             | IndividualR { person :: PersonR }
             deriving Show

data PersonR = PersonR { firstName :: String
                       , lastName :: String
                       } deriving Show

data Point a = Point 
                { x :: a
                , y :: a
                } deriving (Show)

pplus :: (Num a) => Point a -> Point a -> Point a
(Point x1 y1) `pplus` (Point x2 y2) = Point (x1 + x2) (y1 + y2)
{-
Compile error. Why???
data TestShape = TestCircle
                    { location :: Point
                    , radius :: Float
                    }
                 | TestRectangle {
                      leftUpperLocation :: Point
                    , rightDownLocation :: Point
                 } deriving Show
-}
--instance Num Point where
--  (+) (Point x1 y1 ) (Point x2 y2) = Point (x1 + x2) (y1 + y2)
  --(*) (Point x1 y1 ) (Point x2 y2) = x1*y1 + x2*y2
  --abs (Point x y) = sqrt (x * x + y * y)
  --signum = _
  --fromInteger = _
  --negate = _

--instance (Num a, Num b) => Num (Point a b) where
--    Point (a, b) + Point(c, d) = Point (a + c, b + d)
--(+) :: Point -> Point -> Point
--(+) (Point x1 y1) (Point x2 y2) = Point (x1 + x2) (y1 + y2)


{-
leftUpperLocation :: (Float, Float)
rightDownLocation :: (Float, Float)

testArea (TestRectangle leftUpperLocation rightDownLocation) = abs $ uncurry (*) difference
                                                           where difference = bimap
                                                                   (fst rightDownLocation -) (snd rightDownLocation -)
                                                                   leftUpperLocation
-}

--testArea (TestCircle _ radius) = pi * radius ^ 2

data TestDay = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday
     deriving (Eq, Ord, Show, Read, Bounded, Enum)

testDays :: String
testDays = let ifDay = if Thursday > Wednesday then Thursday else Wednesday
               parsedDay = read "Friday" :: TestDay
           in show Monday ++ " " ++ show parsedDay ++ " " ++ show ifDay ++ " " ++ show (succ Saturday)

data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show)

singletonTree :: a -> Tree a
singletonTree x = Node x EmptyTree EmptyTree

treeInsert :: (Ord a) => a -> Tree a -> Tree a
treeInsert x EmptyTree = singletonTree x
treeInsert x (Node a left right)
  | x == a = Node x left right
  | x >  a = Node a left (treeInsert x right)
  | x <  a  = Node a (treeInsert x left) right

treeElem :: (Ord a) => a -> Tree a -> Bool
treeElem x EmptyTree = False
treeElem x (Node a left right)
  | x == a = True
  | x >  a = treeElem x right
  | otherwise = treeElem x left


convTreeToList :: (Ord a) => Tree a -> [a]
convTreeToList EmptyTree = []
convTreeToList (Node x left right) = convTreeToList left ++ [x] ++ convTreeToList right

treeExample = 
  let exampleList = [8,6,4,1,7,3,5]
      testTree = foldr treeInsert EmptyTree exampleList
  in testTree

treeExample2 = do
  let testTree = singletonTree 5
  print "SingetonTree 5"
  print $ show testTree
  print $ convTreeToList testTree

  let testTree2 = treeInsert 4 testTree
  print "Inserted 5 then 4"
  print $ show testTree2
  print $ show (convTreeToList testTree2)
