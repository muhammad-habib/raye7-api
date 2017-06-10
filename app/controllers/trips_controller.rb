class TripsController < ApplicationController

  # GET /trips
  def index
    @trips = Trip.all
    trips = []
    for trip in @trips
      driver = User.find(trip.driver_id)
      user = User.find(params['user_id'])
      if driver.group_id == user.group_id && driver.work_id == user.work_id && driver.home_id == user.home_id
        trips.push trip
      end
    end
    json_response(trips)
  end

  # POST /trips
  def create
    @trip = Trip.create!(trip_params)
    json_response(@trip, :created)
  end

  # POST /trips/:id/join
  def join
    usertrip = UsersTrip.new
    usertrip.user_id = params['user_id']
    usertrip.trip_id = params['id']
    usertrip.save
    json_response(usertrip, :created)
  end

  # POST /trips/:id/leave
  def leave
    UsersTrip.delete_all(user_id: params['user_id'], trip_id: params['id'])
    json_response({}, 200)
  end

  # GET /trips/:id
  def show
    trip = Trip.find(params[:id])
    users = trip.users
    json_response(['trip' => trip, 'users' => users], 200)
  end

  # DELETE /trips/:id?user_id=X
  def destroy
    trip = Trip.find(params[:id])
    if trip.driver_id == params['user_id'].to_i
      trip.destroy
      json_response({}, 200)
    else
      json_response({ error: 'unauthorized' }, 401)
    end

  end

  def trip_params
    # whitelist params
    params.permit(:seats, :driver_id, :source_id, :destination_id, :departure_time)
  end

end
