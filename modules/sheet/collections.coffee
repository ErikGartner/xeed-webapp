###*
# Contains all collections and schemas used by the template module.
# Authors are refereced by Meteor user id.
# @module collections
###
@Sheets = new Mongo.Collection 'sheets'

Schemas.sheetItem = new SimpleSchema
  name:
    type: String
    label: 'Name'
    max: 50
    
  type:
    type: String
    label: 'Item type'

Schemas.sheetItem.subitems =
  type: [Schemas.sheetItem]
  minCount: 0

Schemas.sheet = new SimpleSchema
  name:
    type: String
    label: 'Name'
    max: 200

  author:
    type: String
    label: 'Author'
    custom: ->
      if Meteor.isServer
        user = Meteor.users.findOne _id: @value
        if not user?
          return 'invalid-foreign-key'

  description:
    type: String
    label: 'Description'
    optional: true
    defaultValue: ''

  items:
    label: 'Fields'
    type: [Schemas.sheetItem]
    optional: true
    minCount: 0

Sheets.attachSchema Schemas.sheet

Sheets.allow(
  insert: (userId, doc) ->
    return userId
)
