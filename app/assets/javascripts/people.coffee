set_events_for_added_fields = ->
  $('.prs-crs-course-id').last().change ->
    $(@).reset_group_options()

$.fn.set_initial_course = () ->
  group_el = @
  group = @val()
  if group != '' && group != undefined
    course = $(@).parents('fieldset').find('.prs-crs-course-id')
    $.getJSON "/groups/#{group}/course.json", (data) ->
      $(course).val(data.course)
      $(course).reset_group_options()

$.fn.reset_group_options = () ->
  course_el = @
  course = @val()
  group_el = $(@).parents('fieldset').find('.prs-crs-group-id')
  initial = $(group_el).val()
  $(group_el).find('option').remove()

  if course != '' && course != undefined
    $.getJSON "/groups/#{course}/by_course.json", (data) ->
      for group in data.groups
        $(group_el).append(
          "<option value='#{group.id}'>#{group.schedule}</option>"
        )
    $(group_el).val(initial)

selects_options_for_nested = ->
  $('.prs-crs-group-id').each (i, el) ->
    $(el).set_initial_course()

$(document).on "page:change", ->
  $('#simple-example').select2()

  $('.prs-crs-course-id').change ->
    $(@).reset_group_options()()
  selects_options_for_nested()

$(document).on 'click', '.add_fields', ->
  set_events_for_added_fields()
