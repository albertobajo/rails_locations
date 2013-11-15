class Country < ActiveRecord::Base
  include RailsLocations::Concerns::Models::Country  
  
  def self.ola_k_ase
    puts "ola_k_ase"
  end
end