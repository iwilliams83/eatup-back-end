module Api
	module V1
    class RestaurantsController < ApplicationController

		  def index
        @restaurants = Restaurant.all
        render json: @restaurants
      end

      def create
        restaurant = Restaurant.new(yelpId: params['yelpId'], name: params['name'], image_url: params['image_url'], location: params['location'], phone: params['phone'])

        restaurant.save

        render json: restaurant
      end
    end
  end
end

# params {"yelpId"=>"f8TZ_ctcSwxwW8S69YKnwg", "name"=>"Il Bambino",
#   "image_url"=>"https://s3-media3.fl.yelpcdn.com/bphoto/3fpFjCxNgCkmArRZ9QmyNA/o.jpg",
#   "location"=>"34-08 31st Ave Astoria, NY 11106", "phone"=>"(718) 626-0087"}
