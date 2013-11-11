class State < ActiveRecord::Base
  # friendly_id
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  # associations
  belongs_to :country
  
  # validations
  validates :name, presence: true, uniqueness: true
  validates :slug, presence: true, uniqueness: true
  validates :country, presence: true
  
  # rails_admin
  if defined? rails_admin
    rails_admin do
      create do
        exclude_fields :slug
      end
    end
  end
  
end
