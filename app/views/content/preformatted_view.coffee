template = require 'views/templates/content/preformatted'
View = require 'views/content/base'

module.exports = class PreformattedView extends View
  template: template
  autoRender: true
  tagName: 'pre'