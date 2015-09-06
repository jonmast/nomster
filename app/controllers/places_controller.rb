class PlacesController < ApplicationController
  def index
    @places = Place.page(params[:page]).per(10)
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    if place.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def place_params
    params.require(:place).permit(:name, :address, :description)
  end
end
