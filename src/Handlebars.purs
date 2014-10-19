module Handlebars
(compile, template, Template(..), TemplateResult(..), toString)
where

foreign import data Template :: *
foreign import data TemplateResult :: * 

foreign import compile
"""function compile(source){
       return Handlebars.compile(source);  
  }""":: String -> Template

foreign import template
"""function template(tmpl){
     return function(context){
       return tmpl(context);  
     ;}
  }""":: forall a . Template -> a -> TemplateResult

foreign import toString
"""
function toString(result){
    return result;
}""" :: TemplateResult -> String
