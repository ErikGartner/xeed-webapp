Template.characters.helpers
  'activeCampaignSelector': ->
    return campaign: Session.get('activeCampaign')
