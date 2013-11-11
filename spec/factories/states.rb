# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :state do
    name { Faker::Name.first_name }
    
    country
  end
end
