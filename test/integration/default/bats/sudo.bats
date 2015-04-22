#!/usr/bin/env bats

@test "sudo works" {
  run sudo -V
  [ "$status" -eq 0 ]
}
