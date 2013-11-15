module RailsLocations
  module Concerns
    module Models
      module EsCity
        extend ActiveSupport::Concern
        
        included do
          # validations
          validates :province, presence: true
  
          # rails_admin
          if defined? rails_admin
            rails_admin do      
              create do
                exclude_fields :slug
              end
            end
          end
        end
        
      end # EsCity    
    end # Models
  end # Concerns
end # RailsLocations
