Template.registerHelper 'truncate', (string, length) ->
  cleanString = _(string).stripTags()
  return _(cleanString).truncate(length)

Template.registerHelper 'avatar_url', (email, imgSize) ->
  conf =
    size: imgSize
    default: 'mm'
    secure: true
  return Gravatar.imageUrl email, conf
