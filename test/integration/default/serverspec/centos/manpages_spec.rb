require_relative '../spec_helper'

describe file('/etc/man.config') do
	it { should be_file }
	it { should contain "MANPATH /native/usr/share/man" }
end
