require_relative '../spec_helper'

describe package('openssh-server') do
  it { should be_installed }
end

describe package('vim') do
  it { should be_installed }
end

describe package('curl') do
  it { should be_installed }
end

describe package('wget') do
  it { should be_installed }
end

describe package('locales') do
  it { should be_installed }
end

describe package('man-db') do
  it { should be_installed }
end
