Controller = require 'controllers/base/controller'
Publication = require 'models/publication'
PublicationView = require 'views/publications/show'
PublicationContents = require 'collections/publication_contents'

module.exports = class PublicationsController extends Controller
  show: (params) ->
    @model = new Publication
      id: params.id
    @model.fetch
      success: =>
        @contents = new PublicationContents [],
          publication_id: @model.get('id')

        @contents.fetch
          data: $.param({ start: 1, end: 20})
        @view  = new PublicationView(model: @model, region: 'main', contents: @contents )