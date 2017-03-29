$ ->
  $(document).on 'change', '#regions_select', (evt) ->
    $.ajax 'update_comunas',
      type: 'GET'
      dataType: 'script'
      data: {
        region_id: $("#regions_select option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Dynamic country select OK!")