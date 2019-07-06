class PlacesController < ApplicationController

  def index
    @places = Place.all.page(params[:page]).per_page(6)
  end

  def link(text, target, attributes = {})
    attributes['data-remote'] = true
    super
  end

  def new
    @place = Place.new
  end

  def create
    Place.create(place_params)
    redirect_to root_path
  end

  private

  def place_params
    params.require(:place).permit(:name, :description, :address)
  end

end
