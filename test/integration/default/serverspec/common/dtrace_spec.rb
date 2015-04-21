require_relative '../spec_helper'

# Test DTrace commmands

# Print version
describe command('dtrace -V') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should contain('dtrace: Sun D ') }
end

# List all probes
describe command('dtrace -l') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should contain('PROVIDER') }
end

# List all probes provided by the syscall provider
describe command('dtrace -l -P syscall') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should contain('PROVIDER') }
end

# Print all entry probes provided by the syscall provide
describe command('dtrace -l -n syscall:::entry') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should contain('PROVIDER') }
end