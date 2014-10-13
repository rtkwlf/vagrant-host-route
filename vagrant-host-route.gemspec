# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-host-route/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-host-route"
  spec.version       = VagrantPlugins::HostRoute::VERSION
  spec.authors       = ["Arctic Wolf Networks"]
  spec.email         = ["dev@arcticwolf.com"]
  spec.summary       = %q{Create a route on the host via a Vagrant-managed guest.}
  spec.description   = %q{Create a route on the host via a Vagrant-managed guest.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
end
