TabularTables.Campaigns = new Tabular.Table(
  name: "Campaigns"
  collection: Campaigns
  selector: (userId) ->
    return {$or: [{players: userId}, {gamemasters: userId}]}
  columns: [
    {data: "name", title: "Name"}
    {data: "gamemasters", title: "Gamemasters"}
    {data: "players", title: "Players"}
    {data: "description", title: "Description"}
  ]
)
