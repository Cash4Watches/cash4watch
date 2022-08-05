class ImageSerializer < ActiveModel::Serializer
  attributes :id, :alt, :file_url
end
