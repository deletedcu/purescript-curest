module Test.Main (main) where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)
import Text.Handlebars (handlebars)

main :: forall eff. Eff (console :: CONSOLE | eff) Unit
main = log $ handlebars "Hello, {{.}}!" "World"
