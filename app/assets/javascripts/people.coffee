add_fields_select2 = ->
  $('.prs-crs-course-id').last().select2()
  $('.prs-crs-group-id').last().select2()

set_course = ->
  $('.prs-crs-group-id').each (i, el) ->
    val = $(el).val()
    $(el).select2()
    course_el = $(el).parents('fieldset').find('.prs-crs-course-id')
    course_el.val('1').select2()

ready = ->
  $('#simple-example').select2()
  set_course()

$(document).on "page:change", ->
  ready()

$(document).on 'click', '.add_fields', ->
  add_fields_select2()
