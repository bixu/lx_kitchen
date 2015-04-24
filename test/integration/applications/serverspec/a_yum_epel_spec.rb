require_relative './spec_helper'

describe command('yum install -y epel-release'), :if => os[:family] == 'centos' do
  its(:exit_status) { should eq 0 }
end

describe package('epel-release'), :if => os[:family] == 'centos' do
  it { should be_installed }
end
