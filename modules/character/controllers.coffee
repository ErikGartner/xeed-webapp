@CharactersController = AppController.extend(
  template: 'characters'
  onAfterAction: ->
    Meta.setTitle 'Characters'
)
