class PlacesController < ApplicationController

  def index
    # all the places in our database are put into the variable called @places
    @places = Place.all.paginate(:page => params[:page], :per_page => 3)

  end

end
