class FavoritesController < ApplicationController  
    def index
        @favorites = Favorite.all
        render json: @favorites
    end
    def removeFav
        @favorite = Favorite.where(["user_id = ? AND cryptocurrency_id = ?", params[:user_id], params[:cryptocurrency_id]])
        @favorite.first.destroy
    end
    def create
        @favorite = Favorite.create(user_id: params[:user_id], cryptocurrency_id: params[:cryptocurrency_id])
        render json: @favorite
    end
end
