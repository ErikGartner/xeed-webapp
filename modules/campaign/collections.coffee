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
        minCount: 0
      gamemasters:
        type: [String]
        label: 'Gamemasters'
        minCount: 1
      description:
        type: String
        label: 'Description'
        max: 400

Campaigns.attachSchema schemas.campaign

Campaigns.allow(
  insert: (userId, doc) ->
    return userId
)
