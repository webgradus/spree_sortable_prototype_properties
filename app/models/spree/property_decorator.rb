module Spree
  Property.class_eval do
    has_many :prototype_property_relations
    has_many :prototypes, :through => :prototype_property_relations

    scope :sorted_with_prototype_order, lambda {|prototype|
      Spree::Property.all.sort_by {|property| prototype.prototype_property_relations.where(:property_id => property.id).first.try(:position) || 0 }
    }
  end
end
