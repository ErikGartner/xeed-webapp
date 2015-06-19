Template.registerHelper 'truncate', (string, length) ->
  cleanString = _(string).stripTags()
  return _(cleanString).truncate(length)
