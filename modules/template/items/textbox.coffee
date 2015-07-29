@TemplateItems =
  textbox
    name: 'Text box'
    description: 'A multiline textbox'
    template: 'xeed-textbox'
    validator: new SimpleSchema
      value:
        type: String
