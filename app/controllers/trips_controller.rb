class TripsController < ApplicationController

  # GET /trips
  def index
    @trip = Trip.all
    json_response(@trip)
  end

  # POST /trips
  def create
    @trip = Trip.create!(trip_params)
    json_response(@trip, :created)
  end

  def trip_params
    # whitelist params
    params.permit(:seats, :driver_id, :source_id, :destination_id, :departure_time)
  end

end
