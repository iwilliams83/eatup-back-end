module Api
	module V1
    class UsersController < ApplicationController

      def create
         @user = User.new(name: params["user"]["name"], email: params["user"]["email"])
				 @user.save
         render json: @user
      end

      def login
        @user = User.find_by(email: params["user"]["email"])
        render json: @user
      end

			def search
				@params = params["locations"]

				central_location = geo_locate(@params)

				@response = RestClient.get 'https://api.yelp.com/v3/businesses/search', {Authorization: "Bearer #{ENV['YELP_API_KEY']}", params: {latitude: "#{central_location[0]}", longitude: "#{central_location[1]}"}}

				render json: @response
			end

			def show
				user_id = params['id']

				user_favorites = User.find(user_id).favorites.map do |favorite|
					Restaurant.find_by_yelpId(favorite.restaurant)
				end.compact

				render json: user_favorites
			end

			private

			def geo_locate(arr)
				Geocoder::Calculations.geographic_center(arr)
			end

    end
  end
end
