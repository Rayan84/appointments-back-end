class V1::ItemsController < ApplicationController
  def index
    @items = Item.all
    render json: @items
  end

  def create
    @item = Item.new(create_params)
    @messege = if @item.save
                 'Item created successfully.'
               else
                 'Something went wrong, please try again later'
               end
    render json: @message
  end

  def destroy
    @item = item.where(destroy_params)
    @message = if @item.delete
                 'Item was deleted successfully.'
               else
                 'Something went wrong! please try again later'
               end
    render json: @message
  end

  private

  def create_params
    params.requrire(:item).permit(:name, :photo, :description, :price)
  end

  def destroy_params
    params.require(:favorite).permit(:item_id)
  end
end
