require_relative '../spec_helper'

# Make sure ssh login is via ssh key only.
describe file('/etc/ssh/sshd_config') do
  it { should be_file }
  it { should contain "PasswordAuthentication no" }
end
