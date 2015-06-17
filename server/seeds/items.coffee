Meteor.startup ->
  Factory.define 'item', Items,
    name: ->
      Fake.sentence()
    rating: ->
      _.random 1, 5
  if Items.find({}).count() == 0
    _(10).times (n) ->
      Factory.create 'item'
      return
  return
