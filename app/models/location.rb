class Location < ActiveRecord::Base
  # associations
  belongs_to :postcode
  belongs_to :city
  
  # validations
  validates :street, presence: true
  
  # custom validations
  validate :postcode_is_in_city
  
  # rails_admin
  if defined? rails_admin
    rails_admin do
      navigation_label 'Rails Locations'
      object_label_method do
        :custom_label_method
      end      
    end
    
    def custom_label_method
      output = street
      output += " #{number}" if number
      
      output
    end
  end
  
  # methods
  
  def postcode_is_in_city
    if postcode.present? and (postcode.city != city)
      errors.add(:postcode, "must be in the city")
    end
  end
  
end
