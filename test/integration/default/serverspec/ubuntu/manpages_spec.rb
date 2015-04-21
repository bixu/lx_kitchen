require_relative '../spec_helper'

describe file('/etc/manpath.config') do
	it { should be_file }
	it { should contain "MANDATORY_MANPATH /native/usr/share/man" }
end
