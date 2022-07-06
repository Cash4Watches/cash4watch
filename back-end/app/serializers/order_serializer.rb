class OrderSerializer < ActiveModel::Serializer
  attributes :id, :brand_name, :model_number, :reference_number, :condition, :previous_service,:previous_polish, :papers,:included_items, :extra_comment, :steps, :documents
end
