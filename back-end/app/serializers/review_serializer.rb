class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment, :user_name, :approved, :created_at
  # def user
  #     user.name
  # end
end
