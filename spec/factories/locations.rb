# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :location do
    street "Gran Vía"
    number "1A"
    
    postcode nil
    city
  end
end
