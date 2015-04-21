#!/usr/bin/env bats

@test "emacs installs" {
  run apt-get install -y emacs
  [ "$status" -eq 0 ]
}

@test "emacs executes" {
  run emacs --version
  [ "$status" -eq 0 ]
}
