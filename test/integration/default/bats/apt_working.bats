#!/usr/bin/env bats

@test "apt is in PATH and working" {
  run apt-get update
  [ "$status" -eq 0 ]
}
