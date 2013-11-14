# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :postcode do
    sequence(:number) { |n| n.to_s }
    
    city
  end
end
