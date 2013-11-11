class Country < ActiveRecord::Base
  # friendly_id
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  # associations
  has_many :states
  
  # validations
  validates :name, presence: true, uniqueness: true
  validates :slug, presence: true, uniqueness: true
  
  # rails_admin
  if defined? rails_admin
    rails_admin do
      create do
        exclude_fields :slug
      end
    end
  end
  
  # methods
  
  def to_s
    "country-#{slug}"
  end
end
