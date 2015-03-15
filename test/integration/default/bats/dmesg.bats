#!/usr/bin/env bats

@test "dmesg executes" {
  run dmesg
  [ "$status" -eq 0 ]
}
