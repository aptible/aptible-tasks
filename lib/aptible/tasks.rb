require 'aptible/tasks/rubocop'
require 'aptible/tasks/version'

module Aptible
  module Tasks
    def self.load_tasks
      glob = File.join(File.dirname(__FILE__), '..', 'tasks', '**', '*.rake')
      Dir.glob(glob).each { |file| load file }
      Rake::Task.tasks
    end

    def self.clear_task(task_name)
      if Rake::Task.tasks.map(&:name).include?(task_name.to_s)
        Rake::Task[task_name].clear
      end
    end
  end
end
