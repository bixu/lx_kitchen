#!/usr/bin/env bats

@test "tmux installs" {
  run apt-get install -y tmux
  [ "$status" -eq 0 ]
}

@test "tmux executes" {
  run tmux -V
  [ "$status" -eq 0 ]
}