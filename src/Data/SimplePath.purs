module Data.SimplePath where
  
import Prelude

data Path = EmptyPath | Path (Path) (Path) 

-- a node is a special case of a path composed of two empty paths
node :: Path
node = Path EmptyPath EmptyPath

-- an edge is just a path of length 1, so this is redudant for composition
edge :: Path -> Path -> Path
edge l r = Path l r

instance showPath :: Show Path where
  show (EmptyPath) = "EmptyPath"
  show (Path l r)  = "Path " <> show l <> " " <> show r

toGram :: Path -> String
toGram (EmptyPath) = "[]"
toGram (Path EmptyPath EmptyPath)  = "()"
toGram (Path l@(Path EmptyPath EmptyPath) r@(Path EmptyPath EmptyPath))  = toGram l <> "-->" <> toGram r
toGram (Path l r)  = "[" <> toGram l <> " " <> toGram r <> "]"
