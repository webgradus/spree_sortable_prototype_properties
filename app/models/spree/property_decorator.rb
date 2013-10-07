module Spree
  Property.class_eval do
    has_many :prototype_property_relations
    has_many :prototypes, :through => :prototype_property_relations
  end
end
