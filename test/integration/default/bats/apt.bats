#!/usr/bin/env bats

@test "apt executes" {
  run apt-get --version
  [ "$status" -eq 0 ]
}
