SiteView = require 'views/site-view'

module.exports = class Controller extends Chaplin.Controller
  beforeAction: ->
    @compose 'site', SiteView
