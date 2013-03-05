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
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.12"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails", "~> 2.13.0"
end
