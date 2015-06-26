Template.registerHelper 'avatarUrl', (imgSize) ->
  conf =
    size: imgSize
    default: 'mm'
    secure: true
  email = Meteor.user()?.emails[0]?.address ?= Gravatar.hash ''
  return Gravatar.imageUrl email, conf

Template.registerHelper 'isOnline', ->
  return Meteor.status().connected
