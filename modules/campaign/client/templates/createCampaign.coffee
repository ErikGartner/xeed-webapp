AutoForm.hooks
  insertCampaignForm:
    before:
      insert: (doc) ->
        context = this
        userEmails = []
        if doc.players?
          userEmails = doc.gamemasters.concat doc.players
        else
          userEmails = doc.gamemasters
        Meteor.call 'mapUserIdsToEmail', userEmails, (err, res) ->
          doc.gamemasters = _.map doc.gamemasters, (val) ->
            return res[val]
          doc.players = _.map doc.players, (val) ->
            return res[val]
          context.result doc
