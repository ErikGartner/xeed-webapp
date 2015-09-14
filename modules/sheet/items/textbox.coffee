@SheetItems =
  textbox:
    name: 'Text box'
    description: 'A multiline textbox'
    template: 'xeed_textbox'
    validator: new SimpleSchema
      value:
        type: String
