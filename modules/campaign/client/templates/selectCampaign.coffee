Template.selectCampaign.events
  'click .campaign-item': (event) ->
    Session.set('activeCampaign', event.target.dataset.id)
    $('#selectCampaign').modal('hide')

Template.selectCampaign.helpers
  campaigns: () ->
    return Campaigns.find {}
