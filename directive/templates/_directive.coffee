define(
  [
    'app'
    'cs!components/directives/<%= directiveSlugWithPrefix %>/<%= directiveSlugWithPrefix %>-controller'
  ],
  (app) ->
    app.directive 'sngs<%= directiveScriptName %>', (Config) ->
      {
        restrict: 'A'
        replace: true
        scope: true
        templateUrl: 'app/components/directives/<%= directiveSlugWithPrefix %>/<%= directiveSlugWithPrefix %>.html'
        controller: '<%= directiveScriptName %>Controller'
      }
)
