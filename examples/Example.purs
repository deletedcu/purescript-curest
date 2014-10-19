module Example
(main)
where

import Handlebars
import qualified Control.Monad.JQuery as J
import Debug.Trace

main = do
  trace "foo bar"
  tmplOutput <- return $ template (compile "<div>{{.}}</div>") "foo"
  result <- J.create $ toString tmplOutput
  main <- J.select "#main"
  J.append result main


