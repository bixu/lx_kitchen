require_relative './spec_helper'

describe file('/etc/man.config'), :if => os[:family] == 'centos' do
	it { should be_file }
	it { should contain "MANPATH /native/usr/share/man" }
end

describe file('/etc/manpath.config'),  :if => os[:family] == ['debian', 'ubuntu'] do
	it { should be_file }
	it { should contain "MANDATORY_MANPATH /native/usr/share/man" }
end
