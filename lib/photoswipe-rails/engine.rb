module PhotoSwipe
  class Engine < ::Rails::Engine
    initializer :assets do |config|
      Rails.application.config.assets.precompile += %w{ photoswipe.js }
      Rails.application.config.assets.precompile += %w{ photoswipe-ui-default.js }
      Rails.application.config.assets.precompile += %w{ photoswipe.scss }
      Rails.application.config.assets.precompile += %w( default-skin/default-skin.scss default-skin/default-skin.png default-skin/default-skin.svg  default-skin/preloader.gif )
      Rails.application.config.assets.paths << root.join('app', 'assets')
    end
  end
end
