require 'spec_helper'

describe Aptible::Tasks::Rubocop do
  before do
    ::Rubocop::CLI.stub(:run)
  end

  its(:config) { should be_a ::Rubocop::Config }

  describe :project_config_file do
    let!(:rubocop_yml) { File.join(Dir.pwd, '.rubocop.yml') }

    it 'should return a local .rubocop.yml if present' do
      expect(subject.project_config_file).to eq rubocop_yml
    end

    it 'should return a .rubocop.yml in a parent directory' do
      FileUtils.cd 'spec'
      expect(subject.project_config_file).to eq rubocop_yml
    end

    it 'should return nil if no file exists' do
      File.stub(:exist?) { false }
      expect(subject.project_config_file).to be_nil
    end
  end

  describe :config do
    it 'contains sane values' do
      expect(subject.config['Documentation']['Enabled']).to be_false
      expect(subject.config['AllCops']['Exclude']).not_to be_empty
    end
  end
end
