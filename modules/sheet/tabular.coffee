TabularTables.Sheets = new Tabular.Table(
  name: 'Sheets'
  collection: Sheets
  extraFields: ['_id', 'author']
  columns: [
    {data: 'name', title: 'Name'}
    {data: 'description', title: 'Description'}
    {data: 'authorName()', title: 'Author'}
  ]
)
