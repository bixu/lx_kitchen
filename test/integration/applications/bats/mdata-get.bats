#!/usr/bin/env bats

@test "mdata-put executes" {
  run mdata-put test test
  [ "$status" -eq 0 ]
}

@test "mdata-get executes" {
  run mdata-get test
  [ "$status" -eq 0 ]
  [ "$output" = "test" ]
}

@test "mdata-list executes" {
  run mdata-list
  [ "$status" -eq 0 ]
  [ "$output" = "test" ]
}

@test "mdata-delete executes" {
  run mdata-delete test
  [ "$status" -eq 0 ]
}

@test "mdata-get executes" {
  run mdata-get test
  [ "$status" -eq 1 ]
}

@test "mdata-list executes" {
  run mdata-list
  [ "$status" -eq 0 ]
}
