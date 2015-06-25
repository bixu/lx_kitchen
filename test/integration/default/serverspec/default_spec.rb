require 'spec_helper'

describe command('curl --version') do
	its(:exit_status) { should eq 0 }
end
