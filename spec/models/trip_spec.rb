require 'rails_helper'

RSpec.describe Trip, type: :model do
  it { should validate_presence_of(:driver_id) }
  it { should validate_presence_of(:source_id) }
  it { should validate_presence_of(:destination_id) }
  it { should validate_presence_of(:seats) }
  it { should validate_presence_of(:departure_time) }
end
