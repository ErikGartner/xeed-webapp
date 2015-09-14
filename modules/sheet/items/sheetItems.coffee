@SheetItems =
  textfield:
    name: 'Textfield'
    description: 'A single line textfield'
    template: 'xeed_textfield'
    validator: new SimpleSchema
      value:
        type: String
