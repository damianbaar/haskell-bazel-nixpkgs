module Main where

import           Data.String
import           TestLib (dupa)
import           Prelude     ((.), putStrLn, ($))

import Data.Ord

test :: String -> String
test a = a

main = do
  t <- putStrLn "asdassadad"
  d <- dupa "test"
  dupa "test"
  putStrLn $ test $ "test"
  putStrLn $ test "test"
  bracket
  putStrLn "asd"
  -- putStrLn $ dupa "test"
  putStrLn "Hello from rules_haskell!"
