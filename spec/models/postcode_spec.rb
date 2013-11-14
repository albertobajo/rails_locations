require 'spec_helper'

describe Postcode do
  # number
  it { should validate_presence_of(:number) }
  it { should validate_uniqueness_of(:number).scoped_to(:city_id) }
  
  # city
  it { should validate_presence_of(:city) }
end
