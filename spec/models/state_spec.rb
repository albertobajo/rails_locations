require 'spec_helper'

describe State do
  # name
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name).scoped_to(:country_id) }
  
  # slug
  it { should validate_presence_of(:slug) }
  it { should validate_uniqueness_of(:slug).scoped_to(:country_id) }
  
  # country
  it { should validate_presence_of(:country) }
end
