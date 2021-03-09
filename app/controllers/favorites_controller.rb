class FavoritesController < ApplicationController
    
    def destroy
        @favorite = Favorite.find(params[:id])
        @favorite.destroy
        render json: @favorite, status: :no_content
    end

    def create
        @favorite = Favorite.create(
            user_id: params[:user_id],
            cryptocurrency_id params[:cryptocurrency_id]
        )
        render json: @favorite
    end

end
