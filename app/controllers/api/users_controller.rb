module Api
  class UsersController < ApplicationController
    before_action :find_user, only: [:edit, :update, :show, :destory]

    def index
      users = User.all
      render json: users, status: :ok
    end
    
    def update
      if @user.update(user_params)
        render json: @user, status: :ok
      else
        render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
      end
    end

    private 

    def find_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:username,:description, :email, :password)
    end
  end
end