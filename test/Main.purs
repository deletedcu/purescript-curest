module Test.Main (main) where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)
import Text.Handlebars (compile)

main :: forall eff. Eff (console :: CONSOLE | eff) Unit
main = do
  let template1 :: forall a. a -> String
      template1 = compile "{{.}}"
  log $ template1 "World"
  log $ template1 1
  log $ template1 42.0
  log $ template1 { test: true }
  let template2 :: { name :: String } -> String
      template2 = compile "Hello, {{name}}!"
  log $ template2 { name: "World" }
