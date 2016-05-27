"use strict";

exports.handlebars = function(source) {
    var hb = typeof Handlebars === 'undefined' ? require('handlebars') : Handlebars;
    var template = hb.compile(source);
    return function(context) {
        return template(context);
    };
};
