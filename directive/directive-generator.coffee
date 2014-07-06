util = require('util')
yeoman = require('yeoman-generator')

DirectiveGenerator = yeoman.generators.NamedBase.extend({
  init: ->
    console.log "creating new directive with name #{@name}"
    @directiveName = @name
    @directiveSlug = @_.slugify @name
    @directiveScriptName = @_(@directiveSlug).classify()
    @directiveSlugWithPrefix = "sngs-#{@directiveSlug}"

  files: ->
    @mkdir @directiveSlugWithPrefix
    @template "_view.html", "#{@directiveSlugWithPrefix}/#{@directiveSlugWithPrefix}.html"
    @template "_controller.coffee", "#{@directiveSlugWithPrefix}/#{@directiveSlugWithPrefix}-controller.coffee"
    @template "_directive.coffee", "#{@directiveSlugWithPrefix}/#{@directiveSlugWithPrefix}-directive.coffee"
})

module.exports = DirectiveGenerator
