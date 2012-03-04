# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas..com/coffee-script/

$("#hero-unit-remove-icon").live "click", (event) ->
  $(".hero-unit").hide()

$(".art-clickable").live "click", (event) ->
  console.log this
  window.location.href = "shouttwo/shouts/" + $(this).data("shout")

$('.dropdown-toggle').dropdown()
