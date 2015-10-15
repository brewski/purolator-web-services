# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'purolator_web_services/version'

Gem::Specification.new do |spec|
  spec.name          = "purolator-web-services"
  spec.version       = PurolatorWebServices::VERSION
  spec.authors       = ["Brian Abreu"]
  spec.email         = ["brian@nuts.com"]
  spec.description   = "Provides an interface to the Purolator web services API"
  spec.summary       = "Interfaces with the Purolator SOAP API"
  spec.homepage      = "https://github.com/brewski/purolator-web-services"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "soap4r-ng", '~> 2.0'
  spec.required_ruby_version = '>= 2.0.0'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
