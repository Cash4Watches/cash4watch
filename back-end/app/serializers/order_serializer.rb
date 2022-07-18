class OrderSerializer < ActiveModel::Serializer
  attributes :id, :brand_name, :model_number, :reference_number, :condition, :previous_service,:previous_polish, :papers,:included_items, :extra_comment, :steps, :documents

  def documents
    object.documents.collect do |document|
    {name: document.name, file_url: document.file_url}
    end
  end
end
