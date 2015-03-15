#!/usr/bin/env bats

@test "dmidecode executes" {
  run dmidecode --version
  [ "$status" -eq 0 ]
}

@test "dmidecode prints system information" {
  run dmidecode
  [ "$status" -eq 0 ]
}