## Module Text.Handlebars

Low-level, unsafe bindings to the Handlebars templating library.

#### `compile`

``` purescript
compile :: forall a. String -> a -> String
```

Compile a string into a template which can be applied to a context.

This function should be partially applyied, resulting in a compiled function
which can be reused, instead of compiling the template on each
application.

_Note_: This function performs no verification on the template string,
so it is recommended that an appropriate type signature be given to the
resulting function. For example:

```purescript
hello :: { name :: String } -> String
hello = compile "Hello, {{name}}!"
```


