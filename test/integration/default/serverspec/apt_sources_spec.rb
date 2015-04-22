require_relative './spec_helper'

describe file('/etc/apt/sources.list'), :if => os[:family] == 'ubuntu' do
	it { should be_file }
	it { should contain "deb http://archive.ubuntu.com/ubuntu trusty main" }
  it { should contain "deb-src http://archive.ubuntu.com/ubuntu trusty main" }
  it { should contain "deb http://archive.ubuntu.com/ubuntu trusty-updates main" }
  it { should contain "deb-src http://archive.ubuntu.com/ubuntu trusty-updates main" }
  it { should contain "deb http://security.ubuntu.com/ubuntu trusty-security main" }
  it { should contain "deb-src http://security.ubuntu.com/ubuntu trusty-security main" }
  it { should contain "deb http://archive.ubuntu.com/ubuntu trusty universe" }
  it { should contain "deb-src http://archive.ubuntu.com/ubuntu trusty universe" }
  it { should contain "deb http://archive.ubuntu.com/ubuntu trusty-updates universe" }
  it { should contain "deb-src http://archive.ubuntu.com/ubuntu trusty-updates universe" }
  it { should contain "deb http://security.ubuntu.com/ubuntu trusty-security universe" }
  it { should contain "deb-src http://security.ubuntu.com/ubuntu trusty-security universe" }
end

describe file('/etc/apt/sources.list'), :if => os[:family] == 'debian' do
  it { should be_file }
  it { should contain "deb http://httpredir.debian.org/debian wheezy main" }
end