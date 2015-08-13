$.fn.buscar_ciudad = () ->
  departamento = @val()
  console.log(departamento)
  target = $(@attr 'data-target')
  target.find('option').remove()
  if departamento != '' && departamento != undefined
    $.getJSON "/ciudades/search/#{departamento}.json", (data) ->
      for ciudad in data
        target.append("<option value='#{ciudad.id}'>#{ciudad.nombre}</option>")
        console.log "#{ciudad.nombre}: #{ciudad.id}"

#$(document).on 'page:change', ->
#  $('.buscar-ciudad').change ->
#    $(@).buscar_ciudad()
#  $('.buscar-ciudad').buscar_ciudad()
