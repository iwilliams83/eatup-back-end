class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :restaurant, :user_id
end
