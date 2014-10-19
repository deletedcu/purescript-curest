# Purescript bindings for Sammy.js
[Purescript](http://www.purescript.org/) bindings for [Sammy.js](http://sammyjs.org/), a Javascript, browser-based [Sinatra](http://www.sinatrarb.com/)-clone.

This is a work in progress, but already relatively fully featured for the basics of what you would expect from a Sinatra clone. Code may need some improvement as I'm learning Purescript as I go along, please provide pull-requests if you find things to improve!

### Features
* http verbs: _get,put,post,delete ("del" to avoid JS naming conflicts)_
* extraction of parameters with _params_, returns a list of parameters with a name, empty list if no parameter present, single element if only one parameter exists.
* Sammy.js events and event bindings (only by string-name for now)
* redirect

### Examples/Docs
[Example.purs](https://github.com/wfaler/purescript-sammy/blob/master/examples/Example.purs) probably provides the best documentation and examples for now, as it shows off the main features of how you would create a Sammy app in Purescript.


