#!/usr/bin/env bats

@test "lsusb executes" {
  run lsusb
  [ "$status" -eq 0 ]
}
