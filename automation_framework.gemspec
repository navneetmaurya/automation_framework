# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'automation_framework/version'

Gem::Specification.new do |spec|
  spec.name          = 'automation_framework'
  spec.version       = AutomationFramework::VERSION
  spec.authors       = ['Navneet Maurya']
  spec.email         = ['navneetm@live.com']
  spec.description   = %q{TODO: Write a gem description}
  spec.summary       = %q{TODO: Write a gem summary}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'bundler', '~> 1.3'
  spec.add_dependency 'rake', '10.0.4'
  spec.add_dependency 'rspec', '~> 2.11'
  spec.add_dependency 'builder'
  spec.add_dependency 'nokogiri', '>= 1.4.3.1'
  spec.add_dependency 'hydra'
  spec.add_dependency 'rest-client'
  spec.add_dependency 'symboltable'
  spec.add_dependency 'selenium-webdriver'

  #needed for other libraries
  spec.add_dependency 'rally_rest_api'
  spec.add_dependency 'json', '~> 1.7.7'

  # Testing
  spec.add_dependency 'selenium_fury', '~> 1.0.1'
  spec.add_dependency 'rspec-extra-formatters', '~> 1.0.0'
  spec.add_dependency 'cucumber', '~> 1.2'
  spec.add_dependency 'faker' # Random Data Generation
  spec.add_dependency 'test-unit'
  spec.add_dependency 'parallel_tests'


  # Logging
  spec.add_dependency 'log4r', '>= 1.1.9'
  spec.add_dependency 'log4r-color', '~> 1.2'
  spec.add_dependency 'colorize'
  spec.add_dependency 'awesome_print'
end
