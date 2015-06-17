Meteor.publishComposite 'items', ->
  { find: ->
    Items.find {}
  }
