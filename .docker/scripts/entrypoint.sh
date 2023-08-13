#!/bin/bash

ALTV_VOICE_SERVER_HOST=${ALTV_VOICE_SERVER_HOST:-"0.0.0.0"}
ALTV_VOICE_SERVER_PLAYER_HOST=${ALTV_VOICE_SERVER_PLAYER_HOST:-"0.0.0.0"}
ALTV_VOICE_SERVER_PLAYER_PORT=${ALTV_VOICE_SERVER_PLAYER_PORT:-"7799"}
ALTV_VOICE_SERVER_PORT=${ALTV_VOICE_SERVER_PORT:-"7798"}
ALTV_VOICE_SERVER_SECRET=${ALTV_VOICE_SERVER_SECRET:-"1234"}

cat <<EOF >/opt/altv/voice.toml
host = '$ALTV_VOICE_SERVER_HOST'
playerHost = '$ALTV_VOICE_SERVER_PLAYER_HOST'
playerPort = $ALTV_VOICE_SERVER_PLAYER_PORT
port =  $ALTV_VOICE_SERVER_PORT
secret = $ALTV_VOICE_SERVER_SECRET
EOF

./altv-voice-server
