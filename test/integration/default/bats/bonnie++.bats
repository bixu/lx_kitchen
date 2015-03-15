#!/usr/bin/env bats

@test "bonnie++ installs" {
  run apt-get install -y bonnie++
  [ "$status" -eq 0 ]
}

@test "bonnie++ executes" {
  run bonnie -s0
  [ "$status" -eq 0 ]
}