Meteor.methods
  mapUserIdsToEmail: (userEmails) ->
    users = Meteor.users.find 'emails.address':  $in: userEmails
    result = {}
    users.forEach (doc, index, cursor) ->
      result[doc.emails[0].address] = doc._id
    return result