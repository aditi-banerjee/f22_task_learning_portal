class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :phone_number
end
