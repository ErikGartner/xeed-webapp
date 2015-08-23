###*
# Contains all collections and schemas used by the template module.
# Authors are refereced by Meteor user id.
# @module collections
###
@Templates = new Mongo.Collection 'templates'

Schemas.templateItem = new SimpleSchema
  name:
    type: String
    label: 'Name'
    max: 50

  description:
    type: String
    label: 'Description'

  type:
    type: String
    label: 'Item type'

Schemas.templateItem.subitems =
  type: [Schemas.templateItem]
  minCount: 0

Schemas.template = new SimpleSchema
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
    type: [Schemas.templateItem]
    blackbox: true

Templates.attachSchema Schemas.template

Templates.allow(
  insert: (userId, doc) ->
    return userId
)
