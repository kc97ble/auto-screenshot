#!/bin/bash

F="$(date +'%Y-%m-%d--%H-%M-%S').png"
D="/var/screenshots/$(date +'%Y-%m-%d')"

echo "Writing to $D/$F..."
mkdir -p "$D"
import -window root "$D/$F"
