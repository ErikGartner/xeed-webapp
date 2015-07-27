@TabularTables = {}

if Meteor.isClient
  Template.registerHelper 'TabularTables', TabularTables
