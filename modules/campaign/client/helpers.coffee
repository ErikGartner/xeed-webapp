Template.registerHelper 'activeCampaignName', ->
  id = Session.get('activeCampaign')
  campaign = Campaigns.findOne _id:id
  return campaign?.name
