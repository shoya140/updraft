updraft
===========

The scaffold for my web applications

## Features

* Installing Twitter Bootstrap, jQuery, Backbone.js and Underscore.js
* Auto-compiling coffee script and sass sources.

## Require

* bower
* grunt
* coffee script
* sass

## Installation

    # Install requirements (if necessary)
    $ npm install -g bower grunt-cli coffee-script
    $ gem install sass

    # Install packages for grunt.
    $ npm install

    # Download libraries and copy them to assets/ directory.
    $ grunt init

    # Start auto-compiling sass and coffee script.
    $ grunt server