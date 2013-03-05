require 'bootstrap-sass'

module EngineOnRails
  class Engine < ::Rails::Engine
    isolate_namespace EngineOnRails

    config.generators do |g|
      g.template_engine :haml
    end
  end
end
