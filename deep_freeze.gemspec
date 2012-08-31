# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'deep_freeze/version'

Gem::Specification.new do |gem|
  gem.name          = "deep_freeze"
  gem.version       = DeepFreeze::VERSION
  gem.authors       = ["Kevin Qi"]
  gem.email         = ["iqnivek@gmail.com"]
  gem.description   = %q{Provide a deep_freeze method for most objects}
  gem.summary       = %q{Simple deep freezing}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec"
end
