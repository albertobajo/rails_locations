class Country < ActiveRecord::Base
  # friendly_id
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  # associations
  has_many :states, dependent: :destroy
  
  # validations
  validates :name, presence: true, uniqueness: true
  validates :slug, presence: true, uniqueness: true
  
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
