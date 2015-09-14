@SheetItems =
  textbox:
    name: 'Textbox'
    description: 'A multiline textbox'
    template: 'xeed_textbox'
    validator: new SimpleSchema
      value:
        type: String
