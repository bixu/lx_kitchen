#!/usr/bin/env bats

@test "cpuid installs" {
  run apt-get install -y cpuid
  [ "$status" -eq 0 ]
}

@test "cpuid executes" {
  run cpuid
  [ "$status" -eq 0 ]
}