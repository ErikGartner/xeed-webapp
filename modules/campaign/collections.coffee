###*
# Contains all collections and schemas used by the campaign module.
# Players and gamemasters are refereced by Meteor user id.
# @module collections
###
@CampaignsCollection = new Mongo.Collection 'campaigns'

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
      gamemasters:
        type: [String]
        label: 'Gamemasters'
        min: 1
      description:
        type: String
        label: 'Description'
        max: 400

CampaignsCollection.attachSchema schemas.campaign
