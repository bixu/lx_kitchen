require_relative './spec_helper'

describe command('apt-get --version'), :if => os[:family] == 'debian' do
  its(:exit_status) { should eq 0 }
end