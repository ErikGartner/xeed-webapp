TabularTables.Characters = new Tabular.Table(
  name: 'Characters'
  collection: Characters
  pub: 'tabular_Characters'
  extraFields: ['campaign']
  columns: [
    {data: 'name', title: 'Name'}
    {data: 'description', title: 'Description'}
  ]
)
