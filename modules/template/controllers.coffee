@TemplatesController = AppController.extend(
  template: 'templates'
  onAfterAction: ->
    Meta.setTitle 'Templates'
)

@CreateTemplateController = AppController.extend(
  template: 'createTemplate'
  onAfterAction: ->
    Meta.setTitle 'Create Template'
)
