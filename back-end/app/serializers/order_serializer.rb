class OrderSerializer < ActiveModel::Serializer
  attributes :id, :brand_name, :model_number, :condition, :previous_service, :previous_polish, :papers, :included_items,
             :extra_comment, :order_type, :tracking_number, :steps, :documents, :images, :user_info
  
  def documents
    object.documents.collect do |document|
      { id: document.id, name: document.name, file_url: document.file_url }
    end
  end

  def images
    object.images.collect do |image|
      { id: image.id, name: image.alt, file_url: image.file_url }
    end
  end
end
