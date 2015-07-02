###*
# Contains all collections and schemas used by the campaign module.
# Players and gamemasters are refereced by Meteor user id.
# @module collections
###
@Campaigns = new Mongo.Collection 'campaigns'

schemas =
  campaign:
    new SimpleSchema
      name:
        type: String
        label: 'Name'
        max: 200

      players:
        type: [String]
        label: 'Players'
        optional: true
        defaultValue: []
        custom: ->
          if Meteor.isServer
            console.log @value
            users = Meteor.users.find _id: $in: @value
            if users.count() != @value.length
              return 'invalid-foreign-key'

      gamemasters:
        type: [String]
        label: 'Gamemasters'
        minCount: 1
        custom: ->
          if Meteor.isServer
            if not _.contains(@value, @userId)
              return 'invalid-foreign-key'

            users = Meteor.users.find _id: $in: @value
            if users.count() != @value.length
              return 'invalid-foreign-key'

      description:
        type: String
        label: 'Description'
        max: 400
        min: 0

Campaigns.attachSchema schemas.campaign

Campaigns.allow(
  insert: (userId, doc) ->
    return userId
)

Campaigns.helpers
  gamemasterNames: ->
    users = Meteor.users.find _id: $in: @gamemasters
    return users.map (doc, index, cursor) ->
      return doc.profile.name

Campaigns.helpers
  playerNames: ->
    users = Meteor.users.find _id: $in: @players
    return users.map (doc, index, cursor) ->
      return doc.profile.name
