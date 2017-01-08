$ -> $('#canvas_dialog').click ->
  $('#canvas').removeClass('blur')
  $(this).hide()
  $('#canvas_mask').hide()

$ -> $('#show_daialog').click ->
  $.ajax(url: "/dev/dialog").done (html) ->
    $('#dialog_content').html(html)
    $('#canvas').addClass('blur')
    $('#canvas_dialog').show()
    $('#canvas_mask').show()
