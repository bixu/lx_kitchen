require_relative '../spec_helper'

describe command('pldd'), :if => os[:family] == 'ubuntu' do
  its(:exit_status) { should eq 1 }
  its(:stdout) { should contain('Exactly') }
end

describe command('pldd'), :if => os[:family] == ['centos', 'debian'] do
  its(:exit_status) { should eq 2 }
  its(:stdout) { should contain('usage:') }
end
