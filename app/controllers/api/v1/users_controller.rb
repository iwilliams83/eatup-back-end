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

    end
  end
end
