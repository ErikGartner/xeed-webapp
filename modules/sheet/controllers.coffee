@SheetsController = AppController.extend(
  template: 'sheets'
  onAfterAction: ->
    Meta.setTitle 'Sheets'
)

@CreateSheetController = AppController.extend(
  template: 'createSheet'
  onAfterAction: ->
    Meta.setTitle 'Create Sheet'
)
