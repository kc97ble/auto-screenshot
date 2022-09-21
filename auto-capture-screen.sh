#!/bin/bash

DELAY=60

function show-help {
  echo 'Usage: bash auto-capture-screen.sh [--delay <SECONDS>]'
}

while [[ $# -gt 0 ]]; do
  case $1 in
    --delay) DELAY="$2"; shift; shift; ;;
    --help) show-help; exit 0; ;;
    *) echo "unknown argument $1"; show-help; exit 1; ;;
  esac
done

echo "Capturing screenshot every $DELAY seconds..."

while sleep "$DELAY"
do
  bash "./capture-screen.sh"
done
