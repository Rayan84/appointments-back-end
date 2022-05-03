class V1::FavoritesController < ApplicationController
  before_action :authenticate_user!

  def index
    @favorites = Favorite.all.where(user_id: params[:user.id])
    render json: @favorites
  end

  def create
    @favorite = Favorite.create(user_params)
  end

  def delete
    @favorite = Favorite.where(user_params).delete
  end

  private
  def user_params
    params.require(:favorite).permit(:user_id, :item_id)
  end
end