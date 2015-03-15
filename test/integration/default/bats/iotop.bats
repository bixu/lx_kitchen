#!/usr/bin/env bats

@test "iotop installs" {
  run apt-get install -y iotop
  [ "$status" -eq 0 ]
}

@test "iotop executes" {
  run iotop --version
  [ "$status" -eq 0 ]
}