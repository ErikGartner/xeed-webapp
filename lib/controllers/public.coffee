@PublicController = RouteController.extend(layoutTemplate: 'publicLayout')

PublicController.events 'click [data-action=logout]': ->
  AccountsTemplates.logout()
  return
