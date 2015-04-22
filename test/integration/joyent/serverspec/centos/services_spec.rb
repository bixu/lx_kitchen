require_relative '../spec_helper'

describe service('crond') do
  it { should be_enabled }
end

describe service('rsyslog') do
  it { should be_enabled }
end

describe service('sshd') do
  it { should be_enabled }
end