define(
  [
    'cs!app',
    'cs!base-controller'
  ],
(app, BaseController) ->
  class <%= directiveScriptName %>Controller extends BaseController
    @register app
    @inject '$scope'
    initialize: ->
      @$scope.name = '<%= name %>'

)
