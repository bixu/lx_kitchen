require_relative '../spec_helper'

describe service('cron') do
  it { should be_enabled }
end

describe service('rsyslog') do
  it { should be_enabled }
end

describe service('ssh') do
  it { should be_enabled }
end

