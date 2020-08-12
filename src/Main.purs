module Main where

import Prelude

import Data.Path (Path(..), edge, node, toGram, toPath, toXML)
import Effect (Effect)
import Effect.Console (log)

x :: Path
x  = EmptyPath

n1 :: Path
n1 = node

n2 :: Path
n2 = node

n3 :: Path
n3 = node

n4 :: Path
n4 = node

e1 :: Path
e1 = edge n1 n2

e2 :: Path
e2 = edge n3 n4

p1 :: Path
p1 = Path e1 e2

main :: Effect Unit
main = do
  log $ "empty: " <> show x 
  log $ "\t" <> toPath x
  log $ "\t" <> toGram x
  log $ "\t" <> toXML x
  log $ "node:  " <> show n1
  log $ "\t" <> toPath n1 
  log $ "\t" <> toGram n1
  log $ "\t" <> toXML n1
  log $ "edge:  " <> show e1 
  log $ "\t" <> toPath e1
  log $ "\t" <> toGram e1
  log $ "\t" <> toXML e1
  log $ "path:  " <> show p1 
  log $ "\t" <> toPath p1
  log $ "\t" <> toGram p1
  log $ "\t" <> toXML p1
  