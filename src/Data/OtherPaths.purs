module Data.OtherPaths where

import Data.SimplePath

-- an annotation is a special case of a path that composes a path with an empty path
-- note: annotating an EmptyPath produces a node
annotate :: Path -> Path
annotate r = Path EmptyPath r 
