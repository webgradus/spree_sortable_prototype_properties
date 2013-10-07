module Spree
  Prototype.class_eval do
    has_many :prototype_property_relations
    has_many :properties, :through => :prototype_property_relations
  end
end
