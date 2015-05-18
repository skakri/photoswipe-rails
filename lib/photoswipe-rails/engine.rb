module PhotoSwipe
  class Engine < ::Rails::Engine
    initializer :assets do |config|
      Rails.application.config.assets.precompile += %w{ photoswipe.js }
      Rails.application.config.assets.precompile += %w{ photoswipe-ui-default.js }
      Rails.application.config.assets.precompile += %w{ photoswipe.css }
      Rails.application.config.assets.precompile += %w{ default-skin/default-skin.css }
      Rails.application.config.assets.paths << root.join('app', 'assets')
    end
  end
end
