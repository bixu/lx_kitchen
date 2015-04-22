#!/usr/bin/env bats

@test "memstat installs" {
  run apt-get install -y memstat
  [ "$status" -eq 0 ]
}

@test "memstat executes" {
  run memstat
  [ "$status" -eq 0 ]
}