class V1::FavoritesController < ApplicationController
  before_action :authenticate_user!

  def index
    @favorites = Favorite.where(user_id: params[user.id])
    render json: @favorites
  end
end