#!/usr/bin/env bats

@test "clamav installs" {
  run apt-get install -y clamav
  [ "$status" -eq 0 ]
}

@test "clamav executes" {
  run clamscan --version
  [ "$status" -eq 0 ]
}
