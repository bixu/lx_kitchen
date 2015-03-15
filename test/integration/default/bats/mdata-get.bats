#!/usr/bin/env bats

@test "mdata-get executes" {
  run mdata-get
  [ "$status" -eq 0 ]
}
