# -*- encoding: utf-8 -*-
require File.expand_path('../lib/multiselect/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Artyom Kalmikov"]
  gem.email         = ["artyom.kalm@yahoo.com"]
  gem.description   = %q{Customized multiselect jQuery plugin for Rails asset pipeline}
  gem.homepage      = "https://github.com/artyomkalm/multiselect"
  gem.summary       = gem.description

  gem.name          = "multiselect"
  gem.require_paths = ["lib"]
  gem.files         = `git ls-files`.split("\n")
  gem.version       = MultiSelect::Rails::VERSION

  gem.license       = "MIT"

  gem.add_dependency "railties", ">= 3.0"
  gem.add_development_dependency "bundler", ">= 1.0"
  gem.add_development_dependency "rake"
end
