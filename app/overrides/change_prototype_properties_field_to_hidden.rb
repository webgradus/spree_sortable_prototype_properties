Deface::Override.new(:virtual_path => 'spree/admin/prototypes/_form',
  :name => 'change_prototype_properties_field_to_hidden',
  :replace_contents => "#properties[data-hook]",
  :text => "
      <%= f.field_container :property_ids do %>
        <%= f.label :property_ids, Spree.t(:properties) %><br>
        <%= f.select :property_ids, Spree::Property.sorted_with_prototype_order(f.object).map { |p| [p.presentation, p.id] }, {}, { :multiple => true, :class => 'select2 fullwidth' } %>
      <% end %>
  "
)
