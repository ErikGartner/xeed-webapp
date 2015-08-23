TabularTables.Templates = new Tabular.Table(
  name: 'Templates'
  collection: Templates
  extraFields: ['_id']
  columns: [
    {data: 'name', title: 'Name'}
    {data: 'description', title: 'Description'}
  ]
)
