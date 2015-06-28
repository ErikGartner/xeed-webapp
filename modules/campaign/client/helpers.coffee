Template.registerHelper 'activeCampaignName', ->
  id = Session.get('activeCampaign')
  campaign = Campaigns.findOne _id:id
  if campaign?
    return campaign.name
  else
    return false
