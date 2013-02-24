# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wallpapering-rails/version'

Gem::Specification.new do |gem|
  gem.name          = "wallpapering-rails"
  gem.version       = Wallpapering::Rails::VERSION
  gem.authors       = ["Matt House"]
  gem.email         = ["matt@eightbitraptor.com"]
  gem.description   = %q{A simple decorator pattern implementation for Rails}
  gem.summary       = %q{wraps the wallpapering gem for Rails}
  gem.homepage      = "http://github.com/eightbitraptor/wallpapering-rails"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "wallpapering", "~> 0.0.2"
  gem.add_dependency "rails", "~> 3.0"
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "generator_spec"
end
