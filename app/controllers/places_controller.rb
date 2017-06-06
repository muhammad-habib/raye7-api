class PlacesController < ApplicationController
  # GET /places
  def index
    @place = Place.all
    json_response(@place)
  end

  # POST /places
  def create
    @place = Place.create!(place_params)
    json_response(@place, :created)
  end

  def place_params
    # whitelist params
    params.permit(:name, :longitude, :latitude)
  end
end
