require 'haml'
require 'bootstrap-sass'

module EngineOnRails
  class Engine < ::Rails::Engine
    isolate_namespace EngineOnRails

    config.generators do |g|
      g.template_engine :haml
      g.test_framework :rspec, :view_specs => false
      g.fixture_replacement :factory_girl_rails, :dir => 'spec/factories'
    end
  end
end
