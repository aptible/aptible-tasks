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
  spec.description   = %q{Shared Rake tasks for Aptible projects.}
  spec.summary       = %q{Shared Rake tasks for Aptible projects.}
  spec.homepage      = 'https://github.com/aptible/aptible-tasks'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($RS)
  spec.test_files    = spec.files.grep(/^spec\//)
  spec.require_paths = ['lib']

  spec.add_dependency 'rake'
  spec.add_dependency 'rubocop', '>= 0.16.0'
  spec.add_dependency 'rspec', '~> 2.0'

  spec.add_development_dependency 'bundler', '~> 1.3'
end
