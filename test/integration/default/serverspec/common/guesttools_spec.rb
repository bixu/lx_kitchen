require_relative '../spec_helper'

# Make sure all guest tools are installed in /lib/smartdc

describe file('/lib/smartdc/common.lib') do
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_executable }
end

describe file('/lib/smartdc/debian') do
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_executable }
end

describe file('/lib/smartdc/joyent_rc.local') do
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_executable }
end

describe file('/lib/smartdc/mdata-execute') do
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_executable }
end

describe file('/lib/smartdc/mdata-fetch') do
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_executable }
end

describe file('/lib/smartdc/redhat') do
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_executable }
end