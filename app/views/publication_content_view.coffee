Content = require 'models/base/content'
ParagraphView = require 'views/content/paragraph_view'
ImageView = require 'views/content/image_view'
HeadingView = require 'views/content/heading_view'

module.exports = class PublicationContentView extends Chaplin.CollectionView
  animationDuration: 0
  initItemView: (model) ->
    switch model.get 'content_type'
      when 'paragraph'
        return new ParagraphView model: model
      when 'image'
        return new ImageView model: model
      when 'heading'
        return new HeadingView model: model