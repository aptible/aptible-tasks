require 'rspec/core'
require 'rspec/core/rake_task'

unless Aptible::Tasks.task_defined?(:spec)
  RSpec::Core::RakeTask.new(:spec) do |spec|
    spec.pattern = 'spec/**/*_spec.rb'
    spec.rspec_opts = '-c' # Color
    spec.rspec_opts << '-fd' # Format: Documentation
  end
end
