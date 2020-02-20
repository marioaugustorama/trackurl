#!/bin/bash

/usr/local/bin/ngrok http 80 &
sleep 30
URLVAR="`curl http://localhost:4040/api/tunnels | jq '.tunnels[0].public_url' | tr -d '"' `"
sed "s|URLVAR|$URLVAR|g" -i /var/www/html/index.html 
echo "URL: $URLVAR"

sleep 2
nginx -g 'daemon off;'
