{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "purescript-gram"
, dependencies =
  [ "console"
  , "control"
  , "effect"
  , "lists"
  , "psci-support"
  , "spec"
  , "spec-quickcheck"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
