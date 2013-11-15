module RailsLocations
  module Concerns
    module Models
      module Postcode
        extend ActiveSupport::Concern

        included do
          # associations
          belongs_to :city
          has_many :locations
  
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
        
      end # Postcode    
    end # Models
  end # Concerns
end # RailsLocations