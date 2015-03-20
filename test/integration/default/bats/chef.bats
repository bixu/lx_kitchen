#!/usr/bin/env bats

@test "chef installs" {
  run curl -sOL https://www.chef.io/chef/install.sh && sudo bash ./install.sh
  [ "$status" -eq 0 ]
}

@test "chef executes" {
  run chef-client --version
  [ "$status" -eq 0 ]
}
