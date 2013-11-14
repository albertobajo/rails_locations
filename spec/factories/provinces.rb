# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :province do
    name { Faker::Name.first_name }

    state
  end
end
