# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'has_balance/version'

Gem::Specification.new do |spec|
  spec.name          = "has_balance"
  spec.version       = HasBalance::VERSION
  spec.authors       = ["Andrey"]
  spec.email         = ["railscode@gmail.com"]
  spec.description   = "Useful balance methods for Rails User model"
  spec.summary       = "Useful balance methods for Rails User model"
  spec.homepage      = "https://github.com/vav/has_balance"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency "rails", ">= 3.2.12"
end
