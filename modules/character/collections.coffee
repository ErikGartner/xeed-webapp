###*
# Contains all collections and schemas used by the character module.
# Campaign is referenced by id.
# @module Character.server.collection
###
@Characters = new Mongo.Collection 'characters'

Schemas.character = new SimpleSchema
  name:
    type: String
    label: 'Name'
    max: 200

  campaign:
    type: String
    label: 'Campaign'
    custom: ->
      if Meteor.isServer
        campaign = Campaigns.findOne _id: @value
        if not campaign?
          return 'invalid-foreign-key'

        if  not (_.contains campaign.gamemasters, @userId or
                 _.contains campaign.players, @userId)
          return 'invalid-foreign-key'

  description:
    type: String
    label: 'Description'
    optional: true
    defaultValue: ''

Characters.attachSchema Schemas.character

Characters.allow(
  insert: (userId, doc) ->
    return userId
)
