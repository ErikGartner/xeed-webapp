@CampaignsController = AppController.extend(
  template: 'campaigns'
  onAfterAction: ->
    Meta.setTitle 'Campaigns'
)
