desc 'Run Aptible custom Rubocop style checker'
task :rubocop do
  Aptible::Tasks::Rubocop.new.run
end
