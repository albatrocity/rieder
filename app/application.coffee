# The application object.
module.exports = class Application extends Chaplin.Application
  initialize: ->
    super
    proxiedSync = Backbone.sync
    Backbone.sync = (method, model, options) ->
      options or (options = {})
      options.crossDomain = true  unless options.crossDomain
      options.xhrFields = withCredentials: true  unless options.xhrFields
      proxiedSync method, model, options