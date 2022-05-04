class V1::FavoritesController < ApplicationController
  before_action :authenticate_user!

  def index
    @favorites = Favorite.all.where(user_id: current_user)
    render json: @favorites
  end

  def create
    @favorite = Favorite.new(user_params)
    @message = if @favorite.save
                 'Favoriate was deleted successfully.'
               else
                 'Something went wrong! please try again later'
               end
    render json: @message
  end

  def delete
    @favorite = Favorite.where(user_id: current_user, item_id: user_params[:item_id])
    @message = if @favorite.delete
                 'Favoriate was deleted successfully.'
               else
                 'Something went wrong! please try again later'
               end
    render json: @message
  end

  private

  def user_params
    params.require(:favorite).permit(:item_id)
  end
end
