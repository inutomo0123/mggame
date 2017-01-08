# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  p = $("#rightPain").height()
  b = $("#rightTopPain").height()
  $("#rightBottomPain").css("height", (p - b - 5) + 'px')

  $(window).resize ->
    p = $("#rightPain").height()
    b = $("#rightTopPain").height()
    $("#rightBottomPain").css("height", (p - b - 5) + 'px')
