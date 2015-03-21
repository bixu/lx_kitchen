#!/usr/bin/env bats

@test "plex package downloads and installs" {
  run wget --no-clobber https://downloads.plex.tv/plex-media-server/0.9.11.7.803-87d0708/plexmediaserver_0.9.11.7.803-87d0708_amd64.deb && dpkg -i plexmediaserver_0.9.11.7.803-87d0708_amd64.deb
  [ "$status" -eq 0 ]
}

@test "plex executes" {
  run service plexmediaserver start
  [ "$status" -eq 0 ]
}
