require File.join(File.dirname(__FILE__), 'lib/photoswipe-rails/version')

Gem::Specification.new do |gem|
  gem.name          = 'photoswipe-rails'
  gem.version       = PhotoSwipe::VERSION
  gem.authors       = ['Kristaps Karlsons', 'Dmitry Semenov']
  gem.email         = ['kristaps.karlsons@gmail.com', 'diiiimaaaa@gmail.com']
  gem.description   = %q{A gem to add PhotoSwipe to Rails asset pipeline}
  gem.summary       = %q{Adds PhotoSwipe to your Rails asset pipeline}
  gem.homepage      = 'https://github.com/skakri/photoswipe-rails'
  gem.license       = 'MIT'

  gem.files = Dir['{app,lib}/**/*', 'Rakefile', 'LICENSE', 'README.md']
  gem.require_paths = ['lib']

  gem.add_development_dependency 'bundler', '~> 1.3'
  gem.add_development_dependency 'rake', '~> 10'
end
