#!/bin/sh

cd "$SNAP_DATA"

[ -f id_rsa ] || $SNAP/usr/bin/ssh-keygen -t rsa -N '' -f id_rsa
# Define port 3080 so it doesn't clash with other users of port 300 (e.g.
# Rocket.Chat)
export PORT=3080
sshtron > "$SNAP_DATA/sshtron.log" 2>&1
