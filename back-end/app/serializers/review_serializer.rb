class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment, :user_name, :approved 
  # def user
  #     user.name
  # end
end
