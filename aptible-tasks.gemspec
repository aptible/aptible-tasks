# encoding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'English'
require 'aptible/tasks/version'

Gem::Specification.new do |spec|
  spec.name          = 'aptible-tasks'
  spec.version       = Aptible::Tasks::VERSION
  spec.authors       = ['Frank Macreery']
  spec.email         = ['frank@macreery.com']
  spec.description   = 'Shared Rake tasks for Aptible projects'
  spec.summary       = 'Shared Rake tasks for Aptible projects'
  spec.homepage      = 'https://github.com/aptible/aptible-tasks'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($RS)
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = ['lib']

  spec.add_dependency 'rake'
  spec.add_dependency 'rubocop', '= 0.62.0'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rspec', '>= 3.0.0'
  spec.add_development_dependency 'rspec-its'
end
