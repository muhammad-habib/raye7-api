class User < ApplicationRecord
  has_many :trips, through: :users_trips
  belongs_to :group
  validates_presence_of :fName, :lName, :phone, :group_id, :home_id, :work_id
end
