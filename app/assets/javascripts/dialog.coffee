$ -> $('#canvas_mask').click ->
  $('#canvas').removeClass('blur')
  $(this).hide()

$ -> $('#show_daialog').click ->
  $('#canvas').addClass('blur')
  $('#canvas_mask').show()
