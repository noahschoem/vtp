module Main where

import System.Environment

import VTPLib

main :: IO ()
main = do
  [srcA,srcB] <- getArgs
  sync srcA srcB

sync :: String -> String -> IO ()
sync srcA srcB = do
  --read the vtphs.db file from both directories.  If not present, initialize.
  
  --for each pair of associated files (s,d) in src and dest,
  --compare s and d.
  --Whichever one is more recent, update.
  --Also report conflicts if neither is more recent.
  --Use a comparison test.
  return ()