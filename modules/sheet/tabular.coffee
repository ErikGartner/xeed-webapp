TabularTables.Sheets = new Tabular.Table(
  name: 'Sheets'
  collection: Sheets
  extraFields: ['_id']
  columns: [
    {data: 'name', title: 'Name'}
    {data: 'description', title: 'Description'}
  ]
)
