require 'spec_helper'

describe Aptible::Tasks::Rubocop do
  before do
    ::Rubocop::CLI.stub(:run)
  end

  its(:config) { should be_a ::Rubocop::Config }

  describe :config do
    it 'contains sane values' do
      expect(subject.config['Documentation']['Enabled']).to be_false
      expect(subject.config['AllCops']['Exclude']).not_to be_empty
    end
  end
end
