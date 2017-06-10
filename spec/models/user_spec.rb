require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:fName) }
  it { should validate_presence_of(:lName) }
  it { should validate_presence_of(:home_id) }
  it { should validate_presence_of(:work_id) }
  it { should validate_presence_of(:group_id) }
  it { should validate_presence_of(:phone) }
  it { should belong_to(:group) }
end
