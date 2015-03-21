#!/usr/bin/env bats

@test "sudo works" {
  run sudo --version
  [ "$status" -eq 0 ]
}
