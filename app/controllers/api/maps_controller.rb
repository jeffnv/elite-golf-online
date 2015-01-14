class Api::MapsController < ApplicationController
  def create
    map = Map.new(map_params)
    if map.save
      render json: map
    else
      render json: map.errors.full_messages, status: 422
    end
  end
  def show
  end
  def index
    render json: Map.all
  end

  def map_params
    params.require(:map).permit(:data, :name, :par)
  end
end
