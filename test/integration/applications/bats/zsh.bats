#!/usr/bin/env bats

@test "zsh installs" {
  run apt-get install -y zsh
  [ "$status" -eq 0 ]
}

@test "zsh executes" {
  run zsh --version
  [ "$status" -eq 0 ]
}