module RailsLocations
  module Concerns
    module Models
      module State
        extend ActiveSupport::Concern
        
        included do
          # friendly_id
          extend FriendlyId
          friendly_id :name, use: :scoped, scope: :country
  
          # associations
          belongs_to :country
          has_many :provinces, dependent: :destroy
          has_many :cities, dependent: :destroy
  
          # validations
          validates :name, presence: true, uniqueness: { scope: :country }
          validates :slug, presence: true, uniqueness: { scope: :country }
          validates :country, presence: true
  
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
        
      end # State
    end # Models
  end # Concerns
end # RailsLocations