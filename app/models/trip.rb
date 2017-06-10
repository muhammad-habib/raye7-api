class Trip < ApplicationRecord
  has_many :users, through: :users_trips

  validates_presence_of :seats, :driver_id, :source_id, :destination_id, :departure_time
end
