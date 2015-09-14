Template.xeed_devbox.onRendered ->
  $('.editable').editable(
    success: (response, newValue) ->
      id = parseInt($(@).data('pk'))
      items = Session.get('items')
      items[id].name = newValue
      Session.set('items', items)
  )
