template = require 'views/templates/content/inline_content'
View = require 'views/content/inline_content'

module.exports = class ParagraphView extends View
  template: template
  autoRender: true