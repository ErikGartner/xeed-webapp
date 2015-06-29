###*
# Contains all collections and schemas used by the character module.
# Campaign is referenced by id.
# @module Character.server.collection
###
@Characters = new Mongo.Collection 'characters'

schemas =
  character:
    new SimpleSchema
      name:
        type: String
        label: 'Name'
        max: 200
      campaign:
        type: String
        label: 'Campaign'
      description:
        type: String
        label: 'Description'
        optional: true

Characters.attachSchema schemas.character

Characters.allow(
  insert: (userId, doc) ->
    return userId
)
