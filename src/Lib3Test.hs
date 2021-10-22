{-# LANGUAGE MultiWayIf #-}

module Lib3Test where

import Data.Bifunctor (bimap)

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

data TestShape = TestCircle
                    { location :: (Float, Float)
                    , radius :: Float
                    }
                 | TestRectangle {
                      leftUpperLocation :: (Float, Float)
                    , rightDownLocation :: (Float, Float)
                 } deriving Show

testArea :: TestShape -> Float
testArea (TestCircle _ radius) = pi * radius ^ 2
testArea (TestRectangle leftUpperLocation rightDownLocation) = abs $ uncurry (*) difference
                                                           where difference = bimap
                                                                   (fst rightDownLocation -) (snd rightDownLocation -)
                                                                   leftUpperLocation