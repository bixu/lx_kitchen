#!/usr/bin/env bats

@test "tcsh installs" {
  run apt-get install -y tcsh
  [ "$status" -eq 0 ]
}

@test "tcsh executes" {
  run tcsh --version
  [ "$status" -eq 0 ]
}