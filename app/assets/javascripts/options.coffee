# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/



$(document).ready ->
  $("#users_new").on("ajax:success", (e, data, status, xhr) ->
    $("#users_new").append "<p>Success!</p>"
  ).on "ajax:error", (e, xhr, status, error) ->
    $('#Modal2').modal('hide');
