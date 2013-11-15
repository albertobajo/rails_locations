module RailsLocations
  module Concerns
    module Models
      module City
        extend ActiveSupport::Concern

        included do          
          # friendly_id
          extend FriendlyId
          friendly_id :name, use: :scoped, scope: [:state, :province]
  
          # associations
          belongs_to :province
          belongs_to :state
          has_many :postcodes, dependent: :destroy
          has_many :locations, dependent: :destroy
  
          # validations
          validates :name, presence: true, uniqueness: { scope: [:state, :province] }
          validates :slug, presence: true, uniqueness: { scope: [:state, :province] }
          validates :state, presence: true
  
          # custom validations
          validate :province_is_in_state
  
          # rails_admin
          if defined? rails_admin
            rails_admin do
              navigation_label 'Rails Locations'
              create do
                exclude_fields :slug
              end
            end
          end          
        end
        
        # methods

        def province_is_in_state
          if province.present? and (province.state != state)
            errors.add(:province, "must be in the state")
          end
        end
        
      end # City    
    end # Models
  end # Concerns
end # RailsLocations
