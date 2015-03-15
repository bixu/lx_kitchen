#!/usr/bin/env bats

@test "vim executes" {
  run vim --version
  [ "$status" -eq 0 ]
}
