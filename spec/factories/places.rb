FactoryGirl.define do
  factory :place do
    name { Faker::Name.unique.name }
    longitude { Faker::Number.number(3) }
    latitude { Faker::Number.number(3) }
  end
end