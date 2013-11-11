$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_locations/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails-locations"
  s.version     = RailsLocations::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of RailsLocations."
  s.description = "TODO: Description of RailsLocations."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.0.1"
  s.add_dependency "friendly_id", "~> 5.0.1"

  s.add_development_dependency "factory_girl_rails", "~> 4.3.0"
  s.add_development_dependency "faker", "~> 1.2.0"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "shoulda-matchers", "~> 2.4.0"
end
