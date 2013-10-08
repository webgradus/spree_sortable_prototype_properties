module Spree
  Prototype.class_eval do
    has_many :prototype_property_relations, -> { order("position") }
    has_many :properties, :through => :prototype_property_relations

    accepts_nested_attributes_for :prototype_property_relations
  end
end
