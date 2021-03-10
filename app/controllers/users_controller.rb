class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users,include: :cryptocurrencies
    end
    def create
        @user = User.create(
            username: params[:username],
            password: params[:password]
        )
        redirect_to 'http://localhost:3000'
    end
    def login
        @user = User.find_by(username: params[:username])
        if @user.password == params[:password]
            render json: @user, include: :cryptocurrencies
        else
            render json: "Sorry We Couldn't Find That User."
        end
    end
end
