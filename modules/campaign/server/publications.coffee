Meteor.publish 'Campaigns', ->
  return Campaigns.find {$or: [{players: @userId}, {gamemasters: @userId}]}
