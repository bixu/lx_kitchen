#!/usr/bin/env bats

@test "ansible prerequisites install" {
  run apt-get install -y software-properties-common
  [ "$status" -eq 0 ]
}

@test "ansible repository installs" {
  run apt-add-repository -y ppa:ansible/ansible
  [ "$status" -eq 0 ]
}

@test "ansible apt-get update" {
  run apt-get update
  [ "$status" -eq 0 ]
}

@test "ansible installs" {
  run apt-get install -y ansible
  [ "$status" -eq 0 ]
}

@test "ansible executes" {
  run ansible --version
  [ "$status" -eq 0 ]
}
