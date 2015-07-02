Meteor.publish 'userCampaigns', ->
  return Campaigns.find $or: [gamemasters: @userId,
                              players: @userId]

Meteor.publishComposite 'tabular_Campaigns', (tableName, ids, tableFields) ->
  check tableName, String
  check ids, Array
  check tableFields, Match.Optional Object

  return {
    find: ->
      return Campaigns.find _id: $in: ids

    children: [
      {
        find: (campaign) ->
          userFields =
            profile: 1
            _id: 1

          return Meteor.users.find {$or: [_id: $in: campaign.gamemasters,
                                   _id: $in: campaign.players]},
                                   fields: userFields
      }
    ]
  }
