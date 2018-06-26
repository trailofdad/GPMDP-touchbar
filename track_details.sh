#!/bin/bash
title=$(cat ~/Library/Application\ Support/Google\ Play\ Music\ Desktop\ Player/json_store/playback.json | /usr/local/bin/jq '.song.title')
artist=$(cat ~/Library/Application\ Support/Google\ Play\ Music\ Desktop\ Player/json_store/playback.json | /usr/local/bin/jq '.song.artist')

if [ $title == null ]; then
  exit
fi

track_details="$artist - $title"

echo "$track_details"
