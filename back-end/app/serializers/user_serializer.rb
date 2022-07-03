class UserSerializer < ActiveModel::Serializer
  attributes :id, :full_name,:email,:company,:street1,:street2,:city,:state,:zip,:phone
end
