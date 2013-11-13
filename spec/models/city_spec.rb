require 'spec_helper'

describe City do
  # name
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name).scoped_to(:state_id, :province_id) }
  
  # slug
  it { should validate_presence_of(:slug) }
  it { should validate_uniqueness_of(:slug).scoped_to(:state_id, :province_id) }
  
  # state
  it { should validate_presence_of(:state) }
  
  # province
  describe "province" do
    context "is in state" do
      it "should be valid" do
        province = create(:province)
        city = build(:city, province: province, state: province.state)
        city.should be_valid
      end
    end
    
    context "is nil" do
      it "should be valid" do
        city = build(:city, province: nil)
        city.should be_valid
      end
    end
    
    context "is not in state" do
      it "should be invalid" do
        province = create(:province)
        state = create(:state)
        city = build(:city, province: province, state: state)
        city.should be_invalid
      end
    end
  end
end
