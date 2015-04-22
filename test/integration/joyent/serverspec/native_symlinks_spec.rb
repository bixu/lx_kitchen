require_relative './spec_helper'

# Test for symlinks for binaries in /native/usr/bin/

describe file('/usr/bin/mdb') do
  it { should be_symlink }
  it { should be_linked_to '/native/usr/bin/mdb' }
end

# Tests of the proc tool commands in proc_tools_spec.rb
describe file('/usr/bin/pcred') do
  it { should be_symlink }
  it { should be_linked_to '/native/usr/bin/pcred' }
end

describe file('/usr/bin/pfiles') do
  it { should be_symlink }
  it { should be_linked_to '/native/usr/bin/pfiles' }
end

describe file('/usr/bin/pflags') do
  it { should be_symlink }
  it { should be_linked_to '/native/usr/bin/pflags' }
end

describe file('/usr/bin/pldd'), :if => os[:family] == ['centos', 'debian'] do
  it { should be_symlink }
  it { should be_linked_to '/native/usr/bin/pldd' }
end

describe file('/usr/bin/prstat') do
  it { should be_symlink }
  it { should be_linked_to '/native/usr/bin/prstat' }
end

describe file('/usr/bin/prun') do
  it { should be_symlink }
  it { should be_linked_to '/native/usr/bin/prun' }
end

describe file('/usr/bin/psig') do
  it { should be_symlink }
  it { should be_linked_to '/native/usr/bin/psig' }
end

describe file('/usr/bin/pstack') do
  it { should be_symlink }
  it { should be_linked_to '/native/usr/bin/pstack' }
end

describe file('/usr/bin/pstop') do
  it { should be_symlink }
  it { should be_linked_to '/native/usr/bin/pstop' }
end

describe file('/usr/bin/ptime') do
  it { should be_symlink }
  it { should be_linked_to '/native/usr/bin/ptime' }
end

describe file('/usr/bin/pwait') do
  it { should be_symlink }
  it { should be_linked_to '/native/usr/bin/pwait' }
end

describe file('/usr/bin/truss') do
  it { should be_symlink }
  it { should be_linked_to '/native/usr/bin/truss' }
end

describe command('truss') do
  its(:exit_status) { should eq 2 }
  its(:stdout) { should contain('usage:') }
end

describe file('/usr/bin/kstat') do
  it { should be_symlink }
  it { should be_linked_to '/native/usr/bin/kstat' }
end

describe command('kstat') do
  its(:exit_status) { should eq 0 }
end

describe file('/usr/bin/zonename') do
  it { should be_symlink }
  it { should be_linked_to '/native/usr/bin/zonename' }
end

describe command('zonename') do
  its(:exit_status) { should eq 0 }
end

# Test for symlinks for binaries in /native/usr/sbin/

describe file('/usr/sbin/cpustat') do
  it { should be_symlink }
  it { should be_linked_to '/native/usr/sbin/cpustat' }
end

describe command('cpustat') do
  its(:exit_status) { should eq 2 }
  its(:stdout) { should contain('Usage:') }
end

describe command('cpustat -h') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should contain('Usage:') }
end
  
# Tests for DTrace commands are in dtrace_spec.rb
describe file('/usr/sbin/dtrace') do
  it { should be_symlink }
  it { should be_linked_to '/native/usr/sbin/dtrace' }
end
  
# Tests of the mdata-* commands in mdata_spec.rb
describe file('/usr/sbin/mdata-get') do
  it { should be_symlink }
  it { should be_linked_to '/native/usr/sbin/mdata-get' }
end

describe file('/usr/sbin/mdata-list') do
  it { should be_symlink }
  it { should be_linked_to '/native/usr/sbin/mdata-list' }
end

describe file('/usr/sbin/mdata-put') do
  it { should be_symlink }
  it { should be_linked_to '/native/usr/sbin/mdata-put' }
end

describe file('/usr/sbin/mdata-delete') do
  it { should be_symlink }
  it { should be_linked_to '/native/usr/sbin/mdata-delete' }
end

describe file('/usr/sbin/plockstat') do
  it { should be_symlink }
  it { should be_linked_to '/native/usr/sbin/plockstat' }
end

describe command('plockstat') do
  its(:exit_status) { should eq 2 }
  its(:stdout) { should contain('Usage:') }
end
