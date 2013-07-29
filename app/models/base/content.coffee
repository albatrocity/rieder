Model = require 'models/base/model'


module.exports = class Content extends Chaplin.Model
  defaults:
    content_type: 'paragraph'
    media: 'Hello there! This is some content'