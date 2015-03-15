#!/usr/bin/env bats

@test "ionice executes" {
  run ionice --version
  [ "$status" -eq 0 ]
}
