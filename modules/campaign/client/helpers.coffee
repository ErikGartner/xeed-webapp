Template.registerHelper 'activeCampaign', ->
  return Session.get('activeCampaign')

Template.registerHelper 'activeCampaignName', ->
  id = Session.get('activeCampaign')
  campaign = Campaigns.findOne _id:id
  return campaign?.name
