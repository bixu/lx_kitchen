#!/usr/bin/env bats

@test "lscpu executes" {
  run lscpu
  [ "$status" -eq 0 ]
}