class UsersController < ApplicationController
    
    def create
        @user = User.create(
            username: params[:username],
            password: params[:password]
        )
        redirect_to 'http://localhost:3000'
    end

    def show
        @user = User.find(params[:id])
        render json: @user, include: :cryptocurrencies
    end
end
