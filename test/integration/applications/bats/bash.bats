#!/usr/bin/env bats

@test "bash executes" {
  run bash --version
  [ "$status" -eq 0 ]
}
