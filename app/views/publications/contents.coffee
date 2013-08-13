View = require 'views/base/collection-view'
Content = require 'models/base/content'
ParagraphView = require 'views/content/paragraph_view'
ImageView = require 'views/content/image_view'
HeadingView = require 'views/content/heading_view'
PreformattedView = require 'views/content/preformatted_view'

module.exports = class PublicationContentsView extends View
  animationDuration: 0
  tagName: 'section'
  initItemView: (model) ->
    switch model.get 'content_type'
      when 0
        return new ParagraphView model: model
      when 1
        return new HeadingView model: model
      when 2
        return new ImageView model: model
      when 3
        return new PreformattedView model: model