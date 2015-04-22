require_relative './spec_helper'

# No root password should be set
describe command("cat /etc/shadow | grep root | awk -F':' '{print $2;}'") do
  its(:stdout) { should eq "*\n" }
end

