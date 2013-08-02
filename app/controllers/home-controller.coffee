Controller = require 'controllers/base/controller'
Publication = require 'models/publication'
PublicationView = require 'views/publications/show'

module.exports = class HomeController extends Controller
  index: ->
    @model = new Publication()
    @model.fetch
      success: =>
        @view  = new PublicationView(model: @model, region: 'main' )