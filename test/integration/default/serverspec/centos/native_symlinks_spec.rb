require_relative '../spec_helper'

# Tests of the proc tool commands in proc_tools_spec.rb

describe file('/usr/bin/pldd') do
  it { should be_symlink }
  it { should be_linked_to '/native/usr/bin/pldd' }
end