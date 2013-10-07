class AddPrimaryKeyToPrototypeProperties < ActiveRecord::Migration
  def change
    add_column :spree_properties_prototypes, :id, :primary_key
  end
end
