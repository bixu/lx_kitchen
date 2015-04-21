require_relative '../spec_helper'

describe package('iputils') do
  it { should be_installed }
end

describe package('vim-common') do
  it { should be_installed }
end

describe package('vim-enhanced') do
  it { should be_installed }
end

describe package('vim-minimal') do
  it { should be_installed }
end

describe package('curl') do
  it { should be_installed }
end

describe package('wget') do
  it { should be_installed }
end

describe package('openssh-clients') do
  it { should be_installed }
end

# The @core installation does not include 'man'...
describe package('man') do
  it { should be_installed }
end

describe package('man-pages') do
  it { should be_installed }
end