$ -> $('#canvas_dialog').click ->
  $('#canvas').removeClass('blur')
  $(this).hide()
  $('#canvas_mask').hide()

$ -> $('#show_daialog').click ->
  $('#canvas').addClass('blur')
  $('#canvas_dialog').show()
  $('#canvas_mask').show()
