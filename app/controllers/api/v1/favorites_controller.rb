module Api
	module V1
    class FavoritesController < ApplicationController


     def create
       @favorite = Favorite.new(user_id: params["user"], restaurant: params["restaurant"])
			 @favorite.save
			 render json: @favorite
		 end

    end
  end
end
