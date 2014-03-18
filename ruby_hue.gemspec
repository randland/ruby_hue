# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruby_hue/version'

Gem::Specification.new do |spec|
  spec.name          = "ruby_hue"
  spec.version       = RubyHue::VERSION
  spec.authors       = ["Nick Karpenske"]
  spec.email         = ["randland@gmail.com"]
  spec.summary       = %q{Ruby library for Philips Hue lights}
  spec.description   = %q{This library provides general api support for Philips Hue lighting systems via a Ruby interface.}
  spec.homepage      = "http://github.com/randland/ruby_hue"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake", "~> 0"
end
