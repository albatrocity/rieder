Paragraph = require('models/content/paragraph')
Image = require('models/content/image')
Heading = require('models/content/heading')

module.exports = class PublicationContent extends Chaplin.Collection
  model: (attrs, options) ->
    switch attrs.content_type
      when 'paragraph' then new Paragraph attrs, options
      when 'image' then new Image attrs, options
      when 'heading' then new Heading attrs, options
  url: '/book.json'