require_relative './spec_helper'

describe file('/etc/localtime') do
	it { should be_file }
  its(:content) { should match /UTC/ }
end

describe command('date +%Z') do
  its(:stdout) { should match "UTC" }
end
