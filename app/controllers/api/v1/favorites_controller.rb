module Api
	module V1
    class FavoritesController < ApplicationController

      def index
      @favorites = Favorite.all
			 render json: @favorites
			end

     def create
       @favorite = Favorite.new(user_id: params["user"], restaurant: params["restaurant"])
			 @favorite.save
			 render json: @favorite
		 end

		 def destroy
	      favorite = Favorite.find(params[:id])
			  favorite.destroy
		 end

    end
  end
end
