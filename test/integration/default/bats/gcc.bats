#!/usr/bin/env bats

@test "gcc installs" {
  run apt-get install -y gcc
  [ "$status" -eq 0 ]
}

@test "gcc executes" {
  run gcc --version
  [ "$status" -eq 0 ]
}
