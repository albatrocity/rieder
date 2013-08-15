template = require 'views/templates/publications/show'
View = require 'views/base/view'
PublicationContents = require 'collections/publication_contents'
PublicationContentsView = require 'views/publications/contents'

module.exports = class PublicationView extends View
  template: template
  autoRender: true
  tagName: 'article'
  initialize: (options) ->
    @contents = options.contents
    super
  render: ->
    super
    @contents_view = new PublicationContentsView
      collection: @contents
      el: @$el.find('#publication_content')
    @subview('content', @contents_view)