Template.selectCampaign.events
  'click tbody > tr': (event) ->
    dataTable = $(event.target).closest('table').DataTable()
    rowData = dataTable.row(event.currentTarget).data()
    Session.set('activeCampaign', rowData._id)
    $('#selectCampaign').modal('hide')
