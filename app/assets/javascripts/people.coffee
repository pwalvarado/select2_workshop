ready = ->
  $('#simple-example').select2()

$(document).on "page:change", ->
  ready()