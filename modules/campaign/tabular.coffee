TabularTables.Campaigns = new Tabular.Table(
  name: 'Campaigns'
  collection: Campaigns
  pub: 'tabular_Campaigns'
  selector: (userId) ->
    return $or: [players: userId,
                 gamemasters: userId]
  extraFields: ['gamemasters', 'players']
  columns: [
    {data: 'name', title: 'Name'}
    {data: 'gamemasterNames()', title: 'Gamemasters'}
    {data: 'playerNames()', title: 'Players'}
    {data: 'description', title: 'Description'}
  ]
)
