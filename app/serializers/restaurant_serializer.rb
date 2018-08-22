class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :yelpId, :name, :image_url, :location, :phone
end
