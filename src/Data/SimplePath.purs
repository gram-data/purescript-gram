module Data.SimplePath where
  
import Prelude

-- paths are either empty, or the composition of two paths
data Path = EmptyPath | Path (Path) (Path) 

-- a node is a path composed of two empty paths
node :: Path
node = Path EmptyPath EmptyPath

-- an edge is a path of length 1
edge :: Path -> Path -> Path
edge l r = Path l r

instance showPath :: Show Path where
  show (EmptyPath) = "EmptyPath"
  show (Path
 l r)  = "Path (" <> show l <> " " <> show r <> ")"

toPath :: Path -> String
toPath (EmptyPath) = "[]"
toPath (Path l r)  = "[" <> toPath l <> " " <> toPath r <> "]"

toGram :: Path -> String
toGram (EmptyPath) = "[]"
toGram (Path EmptyPath EmptyPath)  = "()"
toGram (Path l@(Path EmptyPath EmptyPath) r@(Path EmptyPath EmptyPath))  = toGram l <> "-->" <> toGram r
toGram (Path l r)  = "[" <> toGram l <> " " <> toGram r <> "]"

toXML :: Path -> String
toXML (EmptyPath) = "</>"
toXML (Path EmptyPath EmptyPath)  = "<Node />"
toXML (Path l@(Path EmptyPath EmptyPath) r@(Path EmptyPath EmptyPath))  = "<Edge>" <> toXML l <> toXML r <> "</Edge>"
toXML (Path l r)  = "<Path>" <> toXML l <> " " <> toXML r <> "</Path>"

