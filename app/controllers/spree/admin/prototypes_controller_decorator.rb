module Spree
  module Admin
    PrototypesController.class_eval do
      create.before :set_properties_positions
      update.before :set_properties_positions

      protected

      # fixing each position for PrototypePropertyRelation
      def set_properties_positions
        property_ids = params[:prototype].delete(:property_ids)
        params[:prototype][:prototype_property_relations_attributes] ||= []
        property_ids.delete_if(&:blank?).each_with_index do |property_id, index|
          prototype_property_relation = @object.prototype_property_relations.find_or_create_by_property_id(property_id) if @object.persisted?
          relation_attributes = {
            position: index + 1,
            property_id: property_id
          }
          relation_attributes.merge!(id: prototype_property_relation.id) if @object.persisted?
          params[:prototype][:prototype_property_relations_attributes] << relation_attributes
        end
      end
    end
  end
end
