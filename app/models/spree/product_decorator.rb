module Spree
  Product.class_eval do
    private

    def add_properties_and_option_types_from_prototype
      if prototype_id && prototype = Spree::Prototype.find_by(id: prototype_id)
        prototype.prototype_property_relations.each do |property_relation|
          product_properties.create(property: property_relation.property, position: property_relation.position)
        end
        self.option_types = prototype.option_types
      end
    end

  end
end
