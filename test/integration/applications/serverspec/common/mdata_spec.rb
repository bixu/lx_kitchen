require_relative '../spec_helper'

# Test mdata-* commands

describe command('mdata-put test test') do
  its(:exit_status) { should eq 0 }
end

describe command('mdata-get test') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match /test/ }
end

describe command('mdata-list') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match /test/ }
end

describe command('mdata-delete test') do
  its(:exit_status) { should eq 0 }
end

describe command('mdata-get test') do
  its(:exit_status) { should eq 1 }
  its(:stdout) { should match /No metadata for/ }
end

describe command('mdata-list') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should_not match /test/ }
end