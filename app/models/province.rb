class Province < ActiveRecord::Base  
  # friendly_id
  extend FriendlyId
  friendly_id :name, use: :scoped, scope: :state
  
  # associations
  belongs_to :state
  has_many :cities, dependent: :destroy
  
  # validations
  validates :name, presence: true, uniqueness: { scope: :state }
  validates :slug, presence: true, uniqueness: { scope: :state }
  validates :state, presence: true
  
  # rails_admin
  if defined? rails_admin
    rails_admin do
      create do
        exclude_fields :slug
      end
    end
  end
    
end
