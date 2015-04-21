#!/usr/bin/env bats

@test "lspci executes" {
  run lspci
  [ "$status" -eq 0 ]
}