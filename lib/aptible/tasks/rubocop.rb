require 'rubocop'

module Aptible
  module Tasks
    class Rubocop
      def config_file
        project_config_file ||
          File.join(File.dirname(__FILE__), '..', '..', '..', '.rubocop.yml')
      end

      def project_config_file(dir = Dir.pwd)
        previous = File.expand_path('..', dir)
        local_rubocop_yml = File.join(dir, '.rubocop.yml')
        if File.exist?(local_rubocop_yml)
          local_rubocop_yml
        elsif previous == dir
          nil
        else
          project_config_file(previous)
        end
      end

      def config
        ::RuboCop::ConfigLoader.load_file(config_file)
      end

      def run
        cli = ::RuboCop::CLI.new
        result = cli.run(%W[-c #{config_file}])
        abort unless result.zero?
      end
    end
  end
end
