class Country < ActiveRecord::Base
  include RailsLocations::Concerns::Models::Country  
end
