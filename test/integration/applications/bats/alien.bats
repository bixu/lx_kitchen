#!/usr/bin/env bats

@test "alien installs" {
  run apt-get install -y alien
  [ "$status" -eq 0 ]
}

@test "alien executes" {
  run alien --version
  [ "$status" -eq 0 ]
}
