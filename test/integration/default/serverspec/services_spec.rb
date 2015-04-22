require_relative './spec_helper'

describe service('crond'), :if => os[:family] == 'centos' do
  it { should be_enabled }
end

describe service('cron'), :if => os[:family] == ['debian', 'ubuntu'] do
  it { should be_enabled }
end

describe service('rsyslog') do
  it { should be_enabled }
end

describe service('sshd'), :if => os[:family] == 'centos' do
  it { should be_enabled }
end

describe service('ssh'), :if => os[:family] == ['debian', 'ubuntu'] do
  it { should be_enabled }
end
