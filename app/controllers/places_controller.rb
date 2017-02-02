class PlacesController < ApplicationController

  def index
    # all the places in our database are put into the variable called @places
    @places = Place.all.paginate(:page => params[:page], :per_page => 3)

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
