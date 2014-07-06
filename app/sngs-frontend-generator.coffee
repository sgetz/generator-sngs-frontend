"use strict"
util = require("util")
path = require("path")
yeoman = require("yeoman-generator")
yosay = require("yosay")
chalk = require("chalk")

###
  Prompts
###
promptOne =
  type: "confirm"
  name: "someOption"
  message: "Would you like to enable this option?"
  default: true

###
  yeoman methodss
###
init = ->
  @pkg = require("../package.json")
  @on "end", -> @installDependencies()  unless @options["skip-install"]

askFor = ->
  done = @async()

  promptCb = (props) =>
    @someOption = props.someOption
    done()

  @log yosay("Welcome to the marvelous SngsFrontend generator!")
  prompts = [promptOne]

  @prompt prompts, promptCb

app = ->
  @mkdir "app"
  @mkdir "app/templates"
  @copy "_package.json", "package.json"
  @copy "_bower.json", "bower.json"

projectfiles = ->
  @copy "editorconfig", ".editorconfig"
  @copy "jshintrc", ".jshintrc"

printConfig = ->
  @config.save()
  console.log @config
###
  Create Genorator
###
SngsFrontendGenerator = yeoman.generators.Base.extend {
  init
  askFor
  app
  projectfiles
  printConfig
}

###
  Export Genorator
###
module.exports = SngsFrontendGenerator
