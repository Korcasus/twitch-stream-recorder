#!/bin/bash

mkdir -p /app/video
echo 'root_path = "/app/video"' | envsubst > config.py
echo 'client_id = "$CLIENT_ID"' | envsubst >> config.py
echo 'client_secret = "$CLIENT_SECRET"' | envsubst >> config.py
echo 'username = "$USER_NAME"' | envsubst >> config.py
python twitch-recorder.py --log info