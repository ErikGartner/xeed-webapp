@CampaignsController = AppController.extend(
  template: 'campaigns'
  waitOn: ->
  onAfterAction: ->
    Meta.setTitle 'Campaigns'
)
