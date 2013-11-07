desc 'Run all continuous integration tasks'
task ci: [:rubocop, :spec]
