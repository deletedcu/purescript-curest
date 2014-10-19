module.exports = function(grunt) {

  "use strict";

  grunt.initConfig({

    port: 3000,

    libFiles: [
      "src/**/*.purs",
      "bower_components/purescript-*/src/**/*.purs",
    ],

    clean: {
      tests: ["tmp"],
      lib:   ["output"]
    },

    pscMake: ["<%=libFiles%>"],
    dotPsci: ["<%=libFiles%>"],

    watch: {
      dev: {
        files: ["src/**/*.purs", "tests/**/*"],
        tasks: ['psc:tests', 'express:test'],
        options: {spawn: false}
      }
    },

    mocha_phantomjs: {
      test: {
        options: {
          urls: ['http://localhost:<%=port%>']
        }
      }
    },

    psc: {
      lib: {
        src: ["examples/Example.purs", "<%= libFiles %>"],
        dest: "examples/generated.js"
      }
    },

  });

  grunt.loadNpmTasks("grunt-contrib-clean");
  grunt.loadNpmTasks("grunt-purescript");

  grunt.registerTask("make", ["pscMake", "dotPsci"]);
  grunt.registerTask("default", ["make"]);
};
