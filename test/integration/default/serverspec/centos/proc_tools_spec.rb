require_relative '../spec_helper'

describe command('pldd') do
  its(:exit_status) { should eq 2 }
  its(:stdout) { should contain('usage:') }
end