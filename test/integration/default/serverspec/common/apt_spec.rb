describe command('apt-get --version'), :if => os[:family] == ['debian', 'ubuntu'] do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should contain('ersion') }
end