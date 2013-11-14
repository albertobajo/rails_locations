# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :city do
    name { Faker::Name.first_name }
    type nil
    
    province nil
    state
  end
end
