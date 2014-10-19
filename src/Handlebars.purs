module Handlebars
(compile, template, Template(..),Handlebars(..), TemplateResult(..), toJQuery)
where

import Control.Monad.Eff

foreign import data Template :: *
foreign import data Handlebars :: !
foreign import data TemplateResult :: * 

import qualified Control.Monad.JQuery as J

foreign import compile
"""function compile(source){
     return function(){
       return Handlebars.compile(source);  
     };
  }""":: forall eff. String -> Eff (template :: Handlebars | eff) Template

foreign import template
"""function template(tmpl){
     return function(context){
       return function(){
         return tmpl(context);  
       };
     ;}
  }""":: forall a eff. Template -> a -> Eff (template :: Handlebars | eff) TemplateResult

foreign import toJQuery
"""
function toJQuery(result){
  return function(){
    return result;
  };
}""" :: forall eff. TemplateResult -> Eff (template :: Handlebars | eff) J.JQuery
