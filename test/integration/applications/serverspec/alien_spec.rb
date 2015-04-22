require_relative './spec_helper'

describe command('apt-get install -y alien'), :if => os[:family] == ['debian', 'ubuntu'] do
  its(:exit_status) { should eq 0 }
end

describe package('alien') do
  it { should be_installed }
end
