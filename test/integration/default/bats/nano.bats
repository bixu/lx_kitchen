#!/usr/bin/env bats

@test "nano executes" {
  run nano --version
  [ "$status" -eq 0 ]
}
