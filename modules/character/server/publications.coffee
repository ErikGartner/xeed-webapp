Meteor.publish 'Characters', (campaignId) ->
  Characters.find campaign: campaignId
