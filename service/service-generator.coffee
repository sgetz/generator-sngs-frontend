util = require('util')
yeoman = require('yeoman-generator')

ServiceGenerator = yeoman.generators.NamedBase.extend({
  init: ->
    console.log 'You called the directive subgenerator with the argument ' + this.name + '.'

  files: ->
    this.copy 'somefile.js', 'somefile.js'
})

module.exports = ServiceGenerator
