Paragraph = require('models/content/paragraph')
Image = require('models/content/image')
Heading = require('models/content/heading')
Preformatted = require('models/content/preformatted')

module.exports = class PublicationContents extends Chaplin.Collection
  model: (attrs, options) ->
    switch attrs.content_type
      when 0 then new Paragraph attrs, options
      when 1 then new Heading attrs, options
      when 2 then new Image attrs, options
      when 3 then new Preformatted attrs, options