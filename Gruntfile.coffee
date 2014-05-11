module.exports = (grunt) ->
  grunt.initConfig
    bower:
      install:
        options:
          targetDir: './app/assets'
          layout: 'byComponent'
          install: true
          verbose: false
          cleanTargetDir: false
          cleanBowerDir: false

    sass:
      compile:
        src: 'app/assets/_scss/*.scss'
        dest: 'app/assets/custom/css/style.css'

    coffee:
      compile:
        src: 'app/assets/_coffee/*.coffee'
        dest: 'app/assets/custom/js/script.js'

    watch:
      scss:
        files: 'app/assets/_scss/*.scss'
        tasks: ['sass']
      coffee:
        files: 'app/assets/_coffee/*.coffee'
        tasks: ['coffee']

    connect:
      server:
        options:
          port: 8010
          base: 'app'
          open: true

    open:
      dev:
        path: 'http://localhost:8010/'

  grunt.loadNpmTasks 'grunt-bower-task'
  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-connect'

  grunt.registerTask 'default',  ['sass', 'coffee', 'watch']
  grunt.registerTask 'server',  ['sass', 'coffee', 'connect', 'watch']
