#!/usr/bin/env bats

@test "nano installs" {
  run apt-get install -y nano
  [ "$status" -eq 0 ]
}

@test "nano executes" {
  run nano --version
  [ "$status" -eq 0 ]
}
