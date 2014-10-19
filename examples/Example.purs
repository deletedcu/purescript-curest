module Example
(main)
where

import Handlebars
import qualified Control.Monad.JQuery as J
import Debug.Trace

main = do
  trace "foo bar"
  tmpl <- compile "<div>{{.}}</div>"
  result <- template tmpl "foo" >>= toString >>= J.create
  main <- J.select "#main"
  J.append result main


