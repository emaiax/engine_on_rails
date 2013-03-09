$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "engine_on_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "engine_on_rails"
  s.version     = EngineOnRails::VERSION
  s.authors     = ["Eduardo Maia"]
  s.email       = ["eduvimaia@gmail.com"]
  s.homepage    = "http://github.com/emaiax/engine_on_rails"
  s.summary     = "Example of creating, testing and deploying engines on Rails 3"
  s.description = "Dummy engine for Rails 3"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 3.2.12"
  s.add_dependency "mysql2", "~> 0.3.11"
  s.add_dependency "haml", "~> 3.1.7"
  s.add_dependency "haml-rails", "~> 0.3.5"
  s.add_dependency "sass-rails", "~> 3.2.5"
  s.add_dependency "jquery-rails", "~> 2.2.1"
  s.add_dependency "bootstrap-sass", "~> 2.3.0.1"

  # s.add_dependency "jquery-rails"

  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "shoulda-matchers"
  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency "database_cleaner"
end
