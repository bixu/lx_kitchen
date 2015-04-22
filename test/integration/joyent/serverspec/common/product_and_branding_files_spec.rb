require_relative '../spec_helper'

# Product file that lists image and version info
describe file('/etc/product') do
	it { should be_file }
	it { should contain "Name: Joyent Instance" }
	it { should contain "Image: #{property[:name]} #{property[:version]}" }
	it { should contain "Documentation: #{property[:doc_url]}" }
  it { should contain "Description: #{property[:description]}" }
end

# MOTD
describe file('/etc/motd') do
  it { should be_file }
  it { should contain "Instance (#{property[:name]} #{property[:version]}" }
  it { should contain "#{property[:doc_url]}" }
end
