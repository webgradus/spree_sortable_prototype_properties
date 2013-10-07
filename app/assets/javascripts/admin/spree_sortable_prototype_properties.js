jQuery(function($) {
  // Make select sortable
  $("select.select2#prototype_property_ids").select2("container").find("ul.select2-choices").sortable({
                containment: 'parent',
                start: function() { $("select.select2#prototype_property_ids").select2("onSortStart"); },
                update: function() { $("select.select2#prototype_property_ids").select2("onSortEnd"); }
  });

})

