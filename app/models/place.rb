class Place < ApplicationRecord
  validates_presence_of :name, :longitude, :latitude
  validates_numericality_of :latitude, :longitude
  validates_uniqueness_of :name
end
