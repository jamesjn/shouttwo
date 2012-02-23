// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//
upload = function (file, append_to) {

  if (!file || !file.type.match(/image.*/)) return;

  var fd = new FormData();
  fd.append("image", file); // Append the file
  fd.append("key", "b1507316815a853a7a23318ff905a486");
  var xhr = new XMLHttpRequest();
  xhr.open("POST", "http://api.imgur.com/2/upload.json");
  xhr.onload = function() {
    image_loc = JSON.parse(xhr.responseText).upload.links.original;
    $(append_to).val(image_loc);
   }
   xhr.send(fd);
}
