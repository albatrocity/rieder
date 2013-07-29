# Application-specific view helpers
# http://handlebarsjs.com/#helpers
# --------------------------------

# Map helpers
# -----------

marked.setOptions
  sanitize: true
  smartLists: true
  smartypants: true
  gfm: true
  breaks: true

escapeChar = (chr) ->
  escape[chr] ? "&"

escapeExpression = Handlebars.Utils.escapeExpression

unescapeExpression = (string) ->
  if string instanceof Handlebars.SafeString
    string.toString()
  else if not string
    ''
  else if not possible.test(string)
    string
  else
    string.replace(badChars, escapeChar)

# Make 'with' behave a little more mustachey.
Handlebars.registerHelper 'with', (context, options) ->
  if not context or Handlebars.Utils.isEmpty context
    options.inverse(this)
  else
    options.fn(context)

# Inverse for 'with'.
Handlebars.registerHelper 'without', (context, options) ->
  inverse = options.inverse
  options.inverse = options.fn
  options.fn = inverse
  Handlebars.helpers.with.call(this, context, options)

# Get Chaplin-declared named routes. {{url "likes#show" "105"}}
Handlebars.registerHelper 'url', (routeName, params..., options) ->
  Chaplin.helpers.reverse routeName, params

Handlebars.registerHelper 'markdown', (options) ->
  string = escapeExpression(options.fn this)
  markdown = marked string
  new Handlebars.SafeString markdown