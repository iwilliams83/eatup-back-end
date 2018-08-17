module Api
	module V1
    class UsersController < ApplicationController

      def create
         @user = User.new(name: params["name"], email: params["email"])
         @user.save
         render json: @user
      end

      def login
        @user = User.find_by(email: params["email"])
        render json: @user
      end

    end
  end
end
