module.exports = function (grunt) {
  grunt.initConfig({

    bower: {
      install: {
        options: {
          targetDir: './assets',
          layout: 'byType',
          install: true,
          verbose: false,
          cleanTargetDir: false,
          cleanBowerDir: false
        }
      }
    },

    sass: {
      compile: {
        src: 'assets/_scss/*.scss',
        dest: 'assets/css/style.css'
      }
    },

    coffee: {
      compile: {
        src: 'assets/_coffee/*.coffee',
        dest: 'assets/js/script.js'
      }
    },

    watch: {
      scss: {
        files: 'assets/_scss/*.scss',
        tasks: ['sass']
      },
      coffee: {
        files: 'assets/_coffee/*.coffee',
        tasks: ['coffee']
      }
    }

  });
  grunt.loadNpmTasks('grunt-bower-task');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-contrib-sass');
  grunt.loadNpmTasks('grunt-contrib-coffee');
  grunt.registerTask('default',  ['sass', 'coffee', 'watch']);
};
