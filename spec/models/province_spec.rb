require 'spec_helper'

describe Province do
  # name
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name).scoped_to(:state_id) }
  
  # slug
  it { should validate_presence_of(:slug) }
  it { should validate_uniqueness_of(:slug).scoped_to(:state_id) }
  
  # state
  it { should validate_presence_of(:state) }
end
