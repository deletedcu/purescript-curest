module Handlebars
(compile, template, Template(..),Handlebars(..), TemplateResult(..), toString)
where

import Control.Monad.Eff

foreign import data Template :: *
foreign import data Handlebars :: !
foreign import data TemplateResult :: * 



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

foreign import toString
"""
function toString(result){
  return function(){
    return result;
  };
}""" :: forall eff. TemplateResult -> Eff (template :: Handlebars | eff) String
