class AddDepartureTimeToTrips < ActiveRecord::Migration[5.0]
  def change
    add_column :trips, :departure_time, :datetime
  end
end
