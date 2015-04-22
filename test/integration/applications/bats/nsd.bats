#!/usr/bin/env bats

@test "nsd installs" {
  run apt-get install -y nsd
  [ "$status" -eq 0 ]
}

@test "nsd is running" {
  run service nsd start
  [ "$status" -eq 0 ]
}
