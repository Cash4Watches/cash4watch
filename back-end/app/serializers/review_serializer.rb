class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment, :user_id, :approved 
end
