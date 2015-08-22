module.exports = (grunt) ->
  grunt.initConfig
    bower:
      install:
        options:
          targetDir: './assets/_dist'
          layout: 'byComponent'
          install: true
          verbose: false
          cleanTargetDir: false
          cleanBowerDir: false

    sass:
      compile:
        src: 'assets/scss/*.scss'
        dest: 'assets/_dist/custom/css/style.css'

    coffee:
      compile:
        src: 'assets/coffee/*.coffee'
        dest: 'assets/_dist/custom/js/script.js'

    watch:
      scss:
        files: 'assets/scss/*.scss'
        tasks: ['sass']
      coffee:
        files: 'assets/coffee/*.coffee'
        tasks: ['coffee']

  grunt.loadNpmTasks 'grunt-bower-task'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-contrib-coffee'

  grunt.registerTask 'default',  ['sass', 'coffee', 'watch']
