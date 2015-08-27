Template.createSheet.onRendered ->
  gridster = $('.gridster > ul').gridster(
    widget_margins: [5, 5]
    widget_base_dimensions: [100, 55]
    widget_selector: 'gridster-box'
    resize:
      enabled: true
  ).data('gridster')

  widgets = [
    ['<div class="gridster-box">0</div>', 1, 2],
    ['<div class="gridster-box">0</div>', 1, 2],
    ['<div class="gridster-box">0</div>', 1, 2],
    ['<div class="gridster-box">0</div>', 1, 2],
    ['<div class="gridster-box">0</div>', 1, 2],
    ['<div class="gridster-box">0</div>', 1, 2],
    ['<div class="gridster-box">0</div>', 1, 2],
    ['<div class="gridster-box">0</div>', 1, 2],
    ['<div class="gridster-box">0</div>', 1, 2],
    ['<div class="gridster-box">0</div>', 1, 2],
    ['<div class="gridster-box">0</div>', 1, 2],
  ]

  $.each widgets, (i, widget) ->
    gridster.add_widget.apply gridster, widget
