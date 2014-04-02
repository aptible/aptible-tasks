require 'spec_helper'

describe Aptible::Tasks::Rubocop do
  before do
    ::Rubocop::CLI.stub(:run)
  end

  its(:config) { should be_a ::Rubocop::Config }

  describe :config do
    it 'contains sane values' do
      subject.config['Documentation']['Enabled'].should be_false
      subject.config['AllCops']['Exclude'].should_not be_empty
    end
  end
end
