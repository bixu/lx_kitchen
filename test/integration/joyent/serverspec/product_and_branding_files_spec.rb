require_relative './spec_helper'

# Product file that lists image and version info
describe file('/etc/product') do
  it { should be_file }
  it { should contain "Name: Joyent Instance" }
  it { should contain "Image:" }
  it { should contain "Documentation: https://docs.joyent.com/images/lx-brand-beta" }
  it { should contain "Description:" }
end

# MOTD
describe file('/etc/motd') do
  it { should be_file }
  it { should contain "Instance " }
end
