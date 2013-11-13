class EsCity < City
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
