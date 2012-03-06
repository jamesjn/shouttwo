# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#
#
 
$ ->
  $('.tab').button()
  $('.btn[data-toggle="button"]').button('toggle')
  $('#media1-picture-button').click ->
    $('#media1-label').html("Picture 1 URL")
    $('#shout_media1_type').attr("value", "picture")
    $('#imgur_upload1').html("<a onclick=\"$('#shout1_uploader').click()\">Upload to imgur</a> <input id=\"shout1_uploader\" type=\"file\" style=\"display:none\" onchange=\"upload(this.files[0],'#shout_media1_content')\">")
  $('#media2-picture-button').click ->
    $('#media2-label').html("Picture 2 URL")
    $('#shout_media2_type').attr("value", "picture")
    $('#imgur_upload2').html("<a onclick=\"$('#shout2_uploader').click()\">Upload to imgur</a> <input id=\"shout2_uploader\" type=\"file\" style=\"display:none\" onchange=\"upload(this.files[0],'#shout_media2_content')\">")
  $('#media1-video-button').click ->
    $('#media1-label').html("Video 2 URL")
    $('#shout_media1_type').attr("value", "video")
    $("#imgur_upload1").html('')
  $('#media2-video-button').click ->
    $('#media2-label').html("Video 2 URL")
    $('#shout_media2_type').attr("value", "video")
    $("#imgur_upload2").html('')
  $('#media1-text-button').click ->
    $('#media1-label').html("Text 1")
    $('#shout_media1_type').attr("value", "text")
    $("#imgur_upload1").html('')
  $('#media2-text-button').click ->
    $('#media2-label').html("Text 2")
    $('#shout_media2_type').attr("value", "text")
    $("#imgur_upload2").html('')

  $('#content-box').on "click", ".not-favorited", (event)->
    self = this
    $.post "http://www.jamesjn.com/shouttwo/favorites", {shout_id:$(this).data('shout-id')}, (result)->
      $(self).addClass("favorited")
      $(self).addClass("yellow")
      $(self).removeClass("not-favorited")
      $(self).text "favorite"
      $(self).prepend("<i class =\"icon-heart\"></i>")
      $(self).unbind("click")
      
  $('#content-box').on "click", ".favorited", (event)->
    self = this
    $.ajax 'http://www.jamesjn.com/shouttwo/favorites/'+$(this).data('shout-id'), 
      type: 'DELETE' 
      success: (result)->
        $(self).addClass("not-favorited")
        $(self).removeClass("favorited")
        $(self).removeClass("yellow")
        $(self).text "favorite"
        $(self).prepend("<i class =\"icon-check\"></i>")
        $(self).unbind("click")

