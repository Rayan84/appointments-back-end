class Api::V1::ReservedsController < ApplicationController
  def index
    @reserveds = Reserved.where(user_id: reserved_params_index[:user_id])
    render json: {
      reserveds: @reserveds
    }
  end

  def show
    @reserved = Reserved.find(params[:id])
    render json: @reserved
  end

  def new
    @reserved = Reserved.new
  end

  def edit
    @reserved = Reserved.find(params[:id])
  end

  def create
    @reserved = Reserved.new(reserved_params)
    if @reserved.save
      render json: { success: 'Success', message: 'reservation Added Successfully', data: @reserved,
                     status: :created }
    else
      render json: @reserved.errors, status: :unprocessable_entity
    end
  end

  def update
    @reserved = Reserved.find(params[:id])
    if @reserved.update(reserved_params)
      render json: { success: 'Success', message: 'reservation updated Successfully', data: @reserved,
                     status: :updated }

    else
      render json: @reserved.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @reserved = Reserved.find(params[:id])
    if @reserved.destroy
      render json: { success: 'Success', message: 'reservation deleted Successfully', data: @reserved,
                     status: :deleted }

    end
  end

  private

  def reserved_params
    params.require(:reserved).permit(:user_id, :item_id)
  end

  def reserved_params_index
    params.require(:reserved_show).permit(:user_id)
  end
end
