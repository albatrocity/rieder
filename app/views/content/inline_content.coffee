View = require 'views/content/base'

module.exports = class InlineContentView extends View
  autoRender: true
  tagName: ->
    templateFunc = @getTemplateFunction()
    if typeof templateFunc is 'function'
      html = templateFunc @getTemplateData()
      if $(html).length > 0
        return $(html).prop("tagName").toLowerCase()
      else
        return 'span'
  render: ->
    return false if @disposed
    templateFunc = @getTemplateFunction()
    if typeof templateFunc is 'function'
      html = templateFunc @getTemplateData()
      text = $(html).text() # Get inner HTML
      @$el.html text        # Set template to inner HTML
    this