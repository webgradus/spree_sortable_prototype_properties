class AddPositionToPrototypeProperties < ActiveRecord::Migration
  def change
    add_column :spree_properties_prototypes, :position, :integer, default: 0
  end
end
