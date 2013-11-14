class Postcode < ActiveRecord::Base
  # associations
  belongs_to :city
  
  # validations
  validates :number, presence: true, uniqueness: { scope: :city }
  validates :city, presence: true
  
  # rails_admin
  if defined? rails_admin
    rails_admin do
      navigation_label 'Rails Locations'
      object_label_method :number
    end
  end
  
end
