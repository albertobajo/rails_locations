require 'spec_helper'

describe Location do
  # street
  it { should validate_presence_of(:street) }
  
  # postcode
  describe "postcode" do
    context "is in city" do
      it "should be valid" do
        postcode = create(:postcode)
        location = build(:location, postcode: postcode, city: postcode.city)
        location.should be_valid
      end
    end
    
    context "is nil" do
      it "should be valid" do
        location = build(:location, postcode: nil)
        location.should be_valid
      end
    end
    
    context "is not in city" do
      it "should be invalid" do
        postcode = create(:postcode)
        city = create(:city)
        location = build(:location, city: city, postcode: postcode)
        location.should be_invalid
      end
    end
  end
  
end
