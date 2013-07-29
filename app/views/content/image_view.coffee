template = require 'views/templates/content/image'
View = require 'views/content/base'

module.exports = class ImageView extends View
  template: template
  autoRender: true
  className: 'image'