require_relative './spec_helper'

describe command('apt-get install -y cpuid'), :if => os[:family] == ['debian', 'ubuntu'] do
  its(:exit_status) { should eq 0 }
end

describe command('cpuid'), :if => os[:family] == ['debian', 'ubuntu'] do
  its(:exit_status) { should eq 0 }
end
