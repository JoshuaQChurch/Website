# http://gruntjs.com/getting-started

module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')
    sass:
      options:
        sourceMap: true
        includePaths: [
          'bower_components/bootstrap-sass/assets/stylesheets/'
        ]
        outputStyle: 'nested'
      dist:
        files:
          'dist/css/main.css': 'dev/sass/main.scss'


    # coffee:
    #   options:
    #     join: true
    #   dist:
    #     options:
    #       sourceMap: true
    #     files:
    #       'MississippiFoodInsecurityProject/app/static/js/main.js': 'MississippiFoodInsecurityProject/app/static/src/coffee/main.coffee'
    #       'MississippiFoodInsecurityProject/app/static/js/map.js': 'MississippiFoodInsecurityProject/app/static/src/coffee/map.coffee'
    #       'MississippiFoodInsecurityProject/app/static/js/loader.js': 'MississippiFoodInsecurityProject/app/static/src/coffee/loader.coffee'
    # autoprefixer:
    #   dist:
    #     files:
    #       'MississippiFoodInsecurityProject/app/static/css/main.css': 'MississippiFoodInsecurityProject/app/static/css/main.css'
    watch:
      options:
        livereload: true
      # scripts:
      #   files: 'dev/coffee/**/*.coffee'
      #   tasks: [ 'coffee:dist', 'concat:dist' ]
      stylesheets:
        files: 'dev/sass/**/*.scss'
        tasks: [ 'sass' ]
      gruntfile:
        files: './Gruntfile.coffee'


  grunt.loadNpmTasks 'grunt-sass'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'default', [
    'watch'
  ]
