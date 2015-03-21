#!/usr/bin/env bats

@test "bind9 installs" {
  run apt-get install -y bind9
  [ "$status" -eq 0 ]
}

@test "bind9 is running" {
  run service bind9 start
  [ "$status" -eq 0 ]
}
