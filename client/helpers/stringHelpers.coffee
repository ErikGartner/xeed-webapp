Template.registerHelper 'truncate', (string, length) ->
  cleanString = _(string).stripTags()
  return _(cleanString).truncate(length)

Template.registerHelper 'app_version', ->
  return APP_VERSION
