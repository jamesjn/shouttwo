# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas..com/coffee-script/

$("#hero-unit-remove-icon").live "click", (event) ->
  $(".hero-unit").hide()

$(".art-clickable").live "click", (event) ->
  window.location.href = "http://www.jamesjn.com/shouttwo/shouts/" + $(this).data("shout")

$('.dropdown-toggle').dropdown()

$("#landing-search-box").live "keypress", (event)->
  if event.keyCode == 13 #user pressed enter                          
    event.preventDefault()
    if $(this).val() != ''
      window.location.replace("http://www.jamesjn.com/shouttwo/search/" + $(this).val())
