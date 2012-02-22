# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#
#
 
$ ->
  $('.tab').button()
  $('.btn[data-toggle="button"]').button('toggle')
  $('#shout_media1_type').attr("value", "picture")
  $('#shout_media2_type').attr("value", "picture")
  $('#media1-picture-button').click ->
    $('#media1-label').html("Picture 1 URL")
    $('#shout_media1_type').attr("value", "picture")
  $('#media2-picture-button').click ->
    $('#media2-label').html("Picture 2 URL")
    $('#shout_media2_type').attr("value", "picture")
  $('#media1-video-button').click ->
    $('#media1-label').html("Video 2 URL")
    $('#shout_media1_type').attr("value", "video")
  $('#media2-video-button').click ->
    $('#media2-label').html("Video 2 URL")
    $('#shout_media2_type').attr("value", "video")
  $('#media1-text-button').click ->
    $('#media1-label').html("Text 1")
    $('#shout_media1_type').attr("value", "text")
  $('#media2-text-button').click ->
    $('#media2-label').html("Text 2")
    $('#shout_media2_type').attr("value", "text")
