template = require 'views/templates/content/inline_content'
InlineContentView = require 'views/content/inline_content'

module.exports = class ParagraphView extends InlineContentView
  template: template
  autoRender: true