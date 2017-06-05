require 'rails_helper'

RSpec.describe UsersTrip, type: :model do
  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:trip_id) }
  it { should belong_to(:user) }
  it { should belong_to(:trip) }
end
