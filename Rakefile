require 'fileutils'
require 'bundler/gem_tasks'

desc 'Synchronize PhotoSwipe'
task :sync_photoswipe do

  source = File.join File.dirname(__FILE__), 'photoswipe-src', 'dist'
  destination = File.join File.dirname(__FILE__), 'app', 'assets'

  js_destination = File.join destination, 'javascripts', 'photoswipe'

  idx = File.join js_destination, 'index.js'

  File.read(idx).each_line do | line |
    if line =~ /require (.*)/
      file = "#{source}/#{$1.strip}"
      FileUtils.cp_r file, file.gsub(source, js_destination), verbose: true
    end
  end

  css_destination = File.join destination, 'stylesheets', 'photoswipe'
  css_source = File.join source

  idx = File.join css_destination, 'index.scss'

  File.read(idx).each_line do | line |
    if line =~ /require (.*)\.scss/
      file = "#{css_source}/#{$1.strip}.css"
      target_file = file.gsub(
        css_source,
        css_destination
      ).gsub(/\.css$/, '.scss')

      FileUtils.cp_r file, target_file, verbose: true

      contents = File.read(target_file)

      contents.gsub!(
        /\surl\((?<asset>[\d\w\/\.\-^\)]+)\)/,
        ' image-url("photoswipe/default-skin/\k<asset>")'
      )
      File.open(target_file, 'w') {|f| f.puts contents }
    end
  end

  assets = %w(default-skin.png default-skin.svg preloader.gif)
  asset_destination = File.join destination, 'images', 'photoswipe', 'default-skin'
  asset_source = File.join source, 'default-skin'

  assets.each do |file|
    file = "#{asset_source}/#{file}"
    FileUtils.cp_r(
      file,
      file.gsub(asset_source, asset_destination),
      verbose: true
    )
  end
end
