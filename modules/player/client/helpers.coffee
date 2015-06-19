Template.registerHelper 'avatarUrl', (imgSize) ->
  conf =
    size: imgSize
    default: 'mm'
    secure: true
  return Gravatar.imageUrl Meteor.user().emails[0].address, conf

Template.registerHelper 'isOnline', ->
  return Meteor.status().connected
