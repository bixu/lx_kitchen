#!/usr/bin/env bats

@test "libav-tools installs" {
  run apt-get install -y libav-tools
  [ "$status" -eq 0 ]
}

@test "libav-tools executes" {
  run avconv -h
  [ "$status" -eq 0 ]
}
