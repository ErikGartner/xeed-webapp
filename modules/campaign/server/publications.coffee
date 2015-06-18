Meteor.publish 'Campaigns', ->
  return Campaigns.find {$or: [{players: {$in: [userId]}},
                               {gamemasters: {$in: [userId]}}]}
