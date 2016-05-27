module Test.Main (main) where

import Prelude
import Text.Handlebars
import Control.Monad.Eff.Console

main = log $ handlebars "Hello, {{.}}!" "World"


