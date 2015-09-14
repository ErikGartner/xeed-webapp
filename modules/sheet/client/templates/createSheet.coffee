###*
# The logic for the createSheet template.
#
# @module Sheet.client.createSheet
###

###*
# Adds a widget to the gridster box.
#
# @method addWidget
# @return undefined
###
addWidget = (type) ->
  id = Session.get('next-id')
  Session.set('next-id', id + 1)
  template = @SheetItems[type].template
  $('.gridster > ul').data('gridster').add_widget '<div id="widget' + id +
    '" class="gridster-box container"></div>'
  Blaze.renderWithData(Template.xeed_devbox, {itemTemplate: template, id: id},
    $('#widget' + id)[0])
  items = Session.get('items')
  items.push(type: type, name: @SheetItems[type].name, id: id)
  Session.set('items', items)
  return

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
  Session.set('items', [])
  Session.set('next-id', 0)

Template.createSheet.events
  'click #add-text-field': ->
    addWidget('textfield')

AutoForm.addHooks 'sheetForm',
  before:
    insert: (doc) ->
      doc.author = Meteor.userId()
      doc.items = Session.get('items')
      layouts = $('.gridster > ul').data('gridster').serialize()
      _.each layouts, (element, index, list) ->
        doc.items[index].layout = element
      return doc
