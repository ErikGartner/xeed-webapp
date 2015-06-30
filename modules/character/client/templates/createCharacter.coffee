AutoForm.addHooks 'characterForm',
  before:
    insert: (doc) ->
      doc.campaign = Session.get 'activeCampaign'
      return doc
