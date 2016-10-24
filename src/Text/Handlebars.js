"use strict";

exports.compile = function(source) {
    var template = require('handlebars').compile(source);
    return function(context) {
        return template(context);
    };
};
