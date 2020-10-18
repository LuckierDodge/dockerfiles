#!/bin/bash

docker run -d --restart unless-stopped --stop-timeout 300 \
	-p 28967:28967 \
	-p 127.0.0.1:14002:14002 \
	-e WALLET="0xXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" \
	-e EMAIL="ryandlewis.rl@gmail.com" \
	-e ADDRESS="storj.ryandlewis.dev:28967" \
	-e STORAGE="1TB" \
	--mount type=bind,source="/home/luckierdodge/.local/share/storj/identity/storagenode",destination=/app/identity \
	--mount type=bind,source="/home/luckierdodge/storj",destination=/app/config \
	--name storagenode storjlabs/storagenode:latest
