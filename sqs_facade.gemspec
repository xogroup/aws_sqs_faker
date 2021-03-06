# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'facade/version'

Gem::Specification.new do |spec|
  spec.name          = "sqs_facade"
  spec.version       = Facade::VERSION
  spec.authors       = ["Nephtali Rodriguez"]
  spec.email         = ["nrodriguez@xogrp.com"]

  spec.summary       = %q{Allows fake AWS SQS messages to be generated for testing.}
  spec.description   = %q{Allows fake AWS SQS messages to be generated for testing. This is intended to be used as a Faker/Factory Girl equivalent for stubbing out AWS SQS messages.}
  spec.homepage      = "https://github.com/xogroup/sqs_facade"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.required_ruby_version = '~> 2.3'

  spec.add_dependency "activesupport"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry-byebug"
end
