class State < ActiveRecord::Base
  # friendly_id
  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged
  
  # associations
  belongs_to :country
  
  # validations
  validates :name, presence: true, uniqueness: { scope: :country }
  validates :slug, presence: true, uniqueness: { scope: :country }
  validates :country, presence: true
  
  # rails_admin
  if defined? rails_admin
    rails_admin do
      create do
        exclude_fields :slug
      end
    end
  end
  
  protected
  
  # Try building a slug based on the following fields in
  # increasing order of specificity.
  def slug_candidates
    [
      :name,
      [:name, :country],
    ]
  end
  
end
