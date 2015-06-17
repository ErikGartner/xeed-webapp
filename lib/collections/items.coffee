@Items = new (Mongo.Collection)('items')

Items.helpers {}

Items.before.insert (userId, doc) ->
  doc.createdAt = moment().toDate()
  return
