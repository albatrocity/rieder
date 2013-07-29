Controller = require 'controllers/base/controller'
PublicationContent = require 'collections/publication_content'
PublicationContentView = require 'views/publication_content_view'

module.exports = class HomeController extends Controller
  index: ->
    publication_content = new PublicationContent()
    publication_content.fetch()
    @view = new PublicationContentView 
      region: 'main'
      collection: publication_content
