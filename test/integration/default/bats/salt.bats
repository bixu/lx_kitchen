#!/usr/bin/env bats

@test "salt prerequisites install" {
  run apt-get install -y software-properties-common
  [ "$status" -eq 0 ]
}

@test "salt repository installs" {
  run apt-add-repository -y ppa:saltstack/salt
  [ "$status" -eq 0 ]
}

@test "salt apt-get update" {
  run apt-get update
  [ "$status" -eq 0 ]
}

@test "salt binaries install" {
  run apt-get install -y salt-master salt-minion
  [ "$status" -eq 0 ]
}

@test "salt-master executes" {
  run salt-master --version
  [ "$status" -eq 0 ]
}

@test "salt-minion executes" {
  run salt-minion --version
  [ "$status" -eq 0 ]
}
