# This is a manifest file that'll be compiled into including all the files listed below.
# Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
# be included in the compiled file accessible from http://example.com/assets/application.js
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# the compiled file.
#
#= require jquery
#= require jquery_ujs
#= require twitter/bootstrap
#= require_tree .

resize_sidebar = ->
  if $(window).width() > 767
    console.log 'resizing sidebar', $('#sidecol').height(), $('#maincol').height()
    $('#sidecol').height Math.max($('#maincol').height() + $('footer').height() + 50, 800)
  else
    # If the window is now sufficiently small, remove the manual height we set
    console.log 'Removing sidebar hegiht'
    $('#sidecol').css 'height', ''

$(document).ready ->
  resize_sidebar()
  # Hack - maincol changes after resize_sidebar is called :/
  # TODO: Watch for changes of #maincol height
  setTimeout resize_sidebar, 500
  $(window).resize ->
    resize_sidebar()
  $(window).bind 'orientationchange', (e) ->
    resize_sidebar()
