module Api
	module V1
    class RestaurantsController < ApplicationController

      def search
        @params = params["locations"]

				central_location = geo_locate(@params)

        @response = RestClient.get 'https://api.yelp.com/v3/businesses/search', {Authorization: 'Bearer fBK_qnU-H0uDkpc6mYiVG7VQtZbeHnqDvU9I0Xbfw7SxDBWxIRNzV-j-c4NaPBKj0eC97HYnlRZyBgchLuLusj6PCh488_TnRofoku7O6CPUKr_GTD1X218_Mo11W3Yx', params: {latitude: "#{central_location[0]}", longitude: "#{central_location[1]}"}}
				
        render json: @response
      end

			private

			def geo_locate(arr)
				Geocoder::Calculations.geographic_center(arr)
			end


    end
  end
end
