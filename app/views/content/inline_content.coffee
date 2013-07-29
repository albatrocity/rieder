View = require 'views/content/base'

module.exports = class ContentView extends View
  autoRender: true
  className: 'content'
  tagName: ->
    templateFunc = @getTemplateFunction()
    if typeof templateFunc is 'function'
      html = templateFunc @getTemplateData()
      return $(html).prop("tagName").toLowerCase()
  render: ->
    return false if @disposed
    templateFunc = @getTemplateFunction()
    if typeof templateFunc is 'function'
      html = templateFunc @getTemplateData()
      html = $(html).html() # Get inner HTML
      @$el.html html        # Set template to inner HTML
    this