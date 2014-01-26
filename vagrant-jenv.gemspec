# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-jenv/version'

Gem::Specification.new do |spec|
  spec.name = "vagrant-jenv"
  spec.version = VagrantPlugins::Jenv::VERSION
  spec.platform = Gem::Platform::RUBY
  spec.authors = ["linux_china"]
  spec.email = ["linux_china@hotmail.com"]
  spec.summary = %q{Vagrant jenv plugin}
  spec.description = %q{Vagrant jenv plugin to supply jenv provision}
  spec.homepage = "http://jenv.io"
  spec.license = "MIT"

  spec.files = `git ls-files`.split($/)
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
