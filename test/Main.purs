module Test.Main (main) where

import Prelude
import Text.Handlebars (handlebars)
import Control.Monad.Eff.Console (log)

main = log $ handlebars "Hello, {{.}}!" "World"
