module VTPLib where

import PartialOrd

-- | VersionHist: gives a way to talk about a file's version history.
--   Each entry is an ordered pair (s :: InfoBlob,i :: Integer) where 
--   s is either a record of the file's deletion,
--   or represents the MD5 hash of the file at vtphs run number i.

data InfoBlob = Deletion | Hash String deriving(Eq,Show,Read)

newtype VersionHist = Hist { hist :: [(InfoBlob,Integer)] } deriving(Show,Read)
instance PartialOrd VersionHist where
  cmp _ _ = Nothing
  


