Meteor.publishComposite 'tabular_Characters', (tableName, ids, tableFields) ->
  check tableName, String
  check ids, Array
  check tableFields, Match.Optional Object

  return {
    find: ->
      return Campaigns.find $or: [players: @userId, gamemasters: @userId]

    children: [
      {
        find: (campaign) ->
          return Characters.find campaign: campaign._id
      }
    ]
  }
