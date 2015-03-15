#!/usr/bin/env bats

@test "rsyslogd executes" {
  run rsyslogd -v
  [ "$status" -eq 0 ]
}
