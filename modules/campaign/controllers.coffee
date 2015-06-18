@CampaignsController = AppController.extend(
  template: 'campaigns'
  waitOn: ->
    Meteor.subscribe('Campaigns')
  onAfterAction: ->
    Meta.setTitle 'Campaigns'
)
