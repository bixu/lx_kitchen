#!/usr/bin/env bats

@test "ioping installs" {
  run apt-get install -y ioping
  [ "$status" -eq 0 ]
}

@test "ioping executes" {
  run ioping -v
  [ "$status" -eq 0 ]
}