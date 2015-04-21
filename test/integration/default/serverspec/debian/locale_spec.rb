require_relative '../spec_helper'

describe file('/etc/default/locale') do
	it { should be_file }
	it { should contain "LANG=\"en_US.UTF-8\"" }
end
