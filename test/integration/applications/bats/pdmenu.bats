#!/usr/bin/env bats

@test "pdmenu installs" {
  run apt-get install -y pdmenu
  [ "$status" -eq 0 ]
}

@test "pdmenu executes" {
  run pdmenu --version
  [ "$status" -eq 0 ]
}
