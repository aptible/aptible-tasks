require 'rubocop'

module Aptible
  module Tasks
    class Rubocop
      def config_file
        File.join(File.dirname(__FILE__), '..', '..', '..', '.rubocop.yml')
      end

      def config
        ::Rubocop::Config.load_file(config_file)
      end

      def run
        cli = ::Rubocop::CLI.new
        result = cli.run(%W{ -c #{config_file} })
        abort unless result == 0
      end
    end
  end
end
