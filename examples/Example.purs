module Example
(main)
where

import Handlebars
import qualified Control.Monad.JQuery as J
import Debug.Trace

main = do
  trace "foo bar"
  tmpl <- compile "<div>{{.}}</div>"
  result <- template tmpl "foo"
  jqRes <- toJQuery result
  main <- J.select "#main"
  J.append jqRes main
  return "Fpo"


