require 'rspec/core'
require 'rspec/core/rake_task'

# Clear any predefined :spec task
Aptible::Tasks.clear_task(:spec)

RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
  spec.rspec_opts  = '-c'     # Color
  spec.rspec_opts << '-fd'    # Format: Documentation
end
