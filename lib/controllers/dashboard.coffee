@DashboardController = AppController.extend(
  waitOn: ->
  onAfterAction: ->
    Meta.setTitle 'Dashboard'
    return
)

DashboardController.events 'click [data-action=doSomething]': (event, template) ->
  event.preventDefault()
  return
