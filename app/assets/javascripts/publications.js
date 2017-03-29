jQuery(function() {
  var comunas;
  $('#publication_comuna_id').parent().hide();
  comunas = $('#publication_comuna_id').html();
  console.log(comunas);
  return $('#publication_region_id').change(function() {
    var region, escaped_region, options;
    region = $('#publication_region_id :selected').text();
    escaped_region = region.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
    options = $(comunas).filter("optgroup[label=" + escaped_region + "]").html();
    console.log(options);
    if (options) {
      $('#publication_comuna_id').html(options);
      return $('#publication_comuna_id').parent().show();
    } else {
      $('#publication_comuna_id').empty();
      return $('#publication_comuna_id').parent().hide();
    }
  });
});