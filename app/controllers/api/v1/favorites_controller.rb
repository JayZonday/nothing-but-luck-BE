class Api::V1::FavoritesController < ApplicationController

  def index
    @favorites = Favorite.all
    render json: @favorites
  end

  def create
    @favorite = Favorite.create(user_id: fav_params["user_id"],post_id: fav_params["post_id"])
    if @favorite.save
      render json: @favorite
    else
      render json: @favorite.errors
    end
  end

  def show
    @favorite = Favorite.find(params[:id])
    render json: @favoite
  end

  def destroy
    Post.destroy(params[:id])
  end

  private

  def fav_params
    params.require(:favorite).permit(:user_id, :post_id)
  end

end
