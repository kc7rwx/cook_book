# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  availableTags = [ "cup", "tsp", "tbls", "gram", "kg", "l", "ml"]
  $(".ingredient_unit").autocomplete source: availableTags