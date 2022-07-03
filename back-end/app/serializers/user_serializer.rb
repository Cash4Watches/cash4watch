class UserSerializer < ActiveModel::Serializer
  attributes :id, :full_name,:password,:email,:company,:street1,:street2,:city,:state,:zip,:phone
end
