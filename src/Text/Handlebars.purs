-- | Low-level, unsafe bindings to the Handlebars templating library.

module Text.Handlebars
  ( handlebars
  ) where

-- | Compile a string into a template which can be applied to a context.
foreign import handlebars :: forall a. String -> a -> String
