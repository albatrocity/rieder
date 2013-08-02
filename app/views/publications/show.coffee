template = require 'views/templates/publications/show'
View = require 'views/base/view'
PublicationContent = require 'collections/publication_content'
PublicationContentView = require 'views/publications/content'

module.exports = class PublicationView extends View
  template: template
  autoRender: true
  tagName: 'article'
  initialize: ->
    super
    @content = new PublicationContent(@model.get('content'))
  render: ->
    super
    @content_view = new PublicationContentView
      collection: @content
      el: @$el.find('#publication_content')
    @subview('content', @content_view)