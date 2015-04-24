require_relative './spec_helper'

describe command('apt-get install -y bind9'), :if => os[:family] == ['debian', 'ubuntu'] do
  its(:exit_status) { should eq 0 }
end

describe service('bind9'), :if => os[:family] == ['debian', 'ubuntu'] do
  it { should be_running }
end

describe command('yum install -y bind'), :if => os[:family] == 'centos' do
  its(:exit_status) { should eq 0 }
end

describe service('bind9'), :if => os[:family] == 'centos' do
  it { should be_running }
end
