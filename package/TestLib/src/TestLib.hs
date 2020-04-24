module TestLib
  ( dupa
  ) where

import Prelude

dupa :: String -> String
dupa = show . length
