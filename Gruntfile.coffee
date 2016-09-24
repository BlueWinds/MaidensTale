files = [
  'engine/utils'

  'content/stats'
  'content/you'
  'content/intro'
  'content/cell'
  'content/clearMoods'
  'content/statRaising'
  'content/punishments'
  'content/randomAdult'

  'engine/helpers'
  'engine/storyteller'
  'engine/loadSave'
  'engine/game'
]


module.exports = (grunt) ->
  fs = require 'fs'
  ajv = require('ajv')
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-coffeelint'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  config = {
    clean: ['build']
    coffee:
      nsfw:
        files: 'src/.compiled-coffee.js': files.map (f)->('src/' + f + '.coffee')
    coffeelint:
      app: ['src/**/*.coffee']
      options:
        braces_spacing: {level: 'error', spaces: 0}
        colon_assignment_spacing: {level: 'error', spacing: {left: 0, right: 1}}
        cyclomatic_complexity: {level: 'error'}
        eol_last: {level: 'error'}
        line_endings: {level: 'error', value: 'unix'}
        max_line_length: {level: 'ignore'}
        no_empty_functions: {level: 'error'}
        no_empty_param_list: {level: 'error'}
        no_interpolation_in_single_quotes: {level: 'error'}
        no_standalone_at: {level: 'error'}
        no_this: {level: 'error'}
        prefer_english_operator: {level: 'error'}
        space_operators: {level: 'error'}
        spacing_after_comma: {level: 'error'}
    uglify:
      options:
        mangle: false
      libs:
        files:
          'src/.compiled-lib.js': ['lib/*.js']
    watch:
      build:
        files: ['src/**/*']
        tasks: ['build']
  }
  grunt.initConfig(config)

  grunt.registerTask 'copy', ->
    global.window = global;

    require('./src/.compiled-coffee')
    schema = require('./src/engine/schema')(window.Data, window.Game)

    validator = ajv({verbose: true, allErrors: true})
    validator.addKeyword 'isFunction',
      type: 'boolean'
      validate: (schema, data)-> typeof data is 'function'

    unless validator.validate(schema, Data)
      console.log(validator.errors)
      grunt.fail.warn('Data object has bad format')
      return

    grunt.log.ok('Validation successful')

    index = fs.readFileSync('src/index.html', 'utf-8')

    index = index.replace '{{compiled.js}}', fs.readFileSync('src/.compiled-coffee.js')
    index = index.replace '{{style.css}}', fs.readFileSync('src/style.css')

    fs.writeFileSync('index.html', index)
    grunt.log.ok('Wrote index.html')

  grunt.registerTask 'build', ['coffeelint', 'coffee', 'copy']
  grunt.registerTask 'default', ['build', 'watch:build']
