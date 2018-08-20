class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :favorites
end
