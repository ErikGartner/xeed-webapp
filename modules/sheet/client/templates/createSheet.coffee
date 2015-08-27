Template.createSheet.onRendered ->
  gridster = $('.gridster > ul').gridster(
    widget_margins: [5, 5]
    widget_base_dimensions: [200, 70]
    widget_selector: 'gridster-box'
    min_cols: 3
    max_cols: 3
    resize:
      enabled: true
  ).data('gridster')

Template.createSheet.events
  'click #add-text-field': ->
    $('.gridster > ul').data('gridster').add_widget Blaze.toHTMLWithData(
      Template.xeed_itembox, itemTemplate: 'xeed_textbox')

AutoForm.addHooks 'sheetForm',
  before:
    insert: (doc) ->
      doc.author = Meteor.userId()
      doc.items = []
      doc.layout = $('.gridster > ul').data('gridster').serialize()

      console.log doc
      return doc
