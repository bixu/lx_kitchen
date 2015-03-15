#!/usr/bin/env bats

@test "htop installs" {
  run apt-get install -y htop
  [ "$status" -eq 0 ]
}

@test "htop works" {
  run htop --version
  [ "$status" -eq 0 ]
}