module Api
	module V1
    class RestaurantsController < ApplicationController

      def search
        @param = params["location"]
        @response = RestClient.get 'https://api.yelp.com/v3/businesses/search', {:Authorization => 'Bearer fBK_qnU-H0uDkpc6mYiVG7VQtZbeHnqDvU9I0Xbfw7SxDBWxIRNzV-j-c4NaPBKj0eC97HYnlRZyBgchLuLusj6PCh488_TnRofoku7O6CPUKr_GTD1X218_Mo11W3Yx', :params => {:location => "#{@param}"}}
        render json: @response
      end

    end
  end
end