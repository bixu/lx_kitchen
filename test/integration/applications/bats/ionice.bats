#!/usr/bin/env bats

@test "ionice executes" {
  run ionice
  [ "$status" -eq 0 ]
}
