#!/usr/bin/env bats

@test "git installs" {
  run apt-get install -y git
  [ "$status" -eq 0 ]
}

@test "git executes" {
  run git --version
  [ "$status" -eq 0 ]
}
