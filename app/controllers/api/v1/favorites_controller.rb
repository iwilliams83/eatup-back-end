module Api
	module V1
    class FavoritesController < ApplicationController

     def create
       @favorite = Favorite.new(user_id: params["user"]["id"], restaurant_id: params["restaurant"]["id"])
     end

    end
  end
end
