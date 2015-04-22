require_relative './spec_helper'

describe package('iputils'), :if => os[:family] == 'centos' do
  it { should be_installed }
end

describe package('vim-common') do
  it { should be_installed }
end

describe package('vim-enhanced'), :if => os[:family] == 'centos' do
  it { should be_installed }
end

describe package('vim'), :if => os[:family] == ['debian', 'ubuntu'] do
  it { should be_installed }
end

describe package('vim-minimal'), :if => os[:family] == 'centos' do
  it { should be_installed }
end

describe package('curl') do
  it { should be_installed }
end

describe package('wget') do
  it { should be_installed }
end

describe package('openssh-clients'), :if => os[:family] == 'centos' do
  it { should be_installed }
end

describe package('openssh-client'), :if => os[:family] == ['debian', 'ubuntu'] do
  it { should be_installed }
end

# The @core installation does not include 'man'...
describe package('man'), :if => os[:family] == 'centos' do
  it { should be_installed }
end

describe package('man-db'), :if => os[:family] == ['debian', 'ubuntu'] do
  it { should be_installed }
end

describe package('man-pages'), :if => os[:family] == ['debian', 'ubuntu'] do
  it { should be_installed }
end

describe package('openssh-server') do
  it { should be_installed }
end

describe package('curl') do
  it { should be_installed }
end

describe package('wget') do
  it { should be_installed }
end

describe package('locales'), :if => os[:family] == ['debian', 'ubuntu'] do
  it { should be_installed }
end

describe package('sudo') do
  it { should be_installed }
end