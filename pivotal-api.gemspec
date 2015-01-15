# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pivotal_api/version'

Gem::Specification.new do |spec|
  spec.name        = 'pivotal-api'
  spec.version     = PivotalApi::VERSION
  spec.authors     = ['Maciej Skierkowski']
  spec.email       = ['maciej@factor.io']
  spec.summary     = %q{API client for the Pivotal Tracker v5 API}
  spec.description = %q{This gem allows you to easily use the Pivotal Tracker v5 API.}
  spec.homepage    = 'https://github.com/factor-io/pivotal-api'
  spec.license     = 'MIT'

  spec.files         = Dir.glob('./lib/**/*.rb')
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'

  spec.add_dependency 'addressable'
  spec.add_dependency 'virtus'
  spec.add_dependency 'faraday', '~> 0.9.0'
  spec.add_dependency 'faraday_middleware'
  spec.add_dependency 'excon'
end
