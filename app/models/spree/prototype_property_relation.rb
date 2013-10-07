module Spree
  class PrototypePropertyRelation < ActiveRecord::Base
    set_table_name 'spree_properties_prototypes'
    belongs_to :prototype
    belongs_to :property
  end
end
