#!/bin/bash

docker run -d --restart unless-stopped --stop-timeout 300 \
	-p 28967:28967 \
	-p 14002:14002 \
	-e WALLET="" \
	-e EMAIL="" \
	-e ADDRESS="" \
	-e STORAGE="" \
	--mount type=bind,source="/home/luckierdodge/.local/share/storj/identity/storagenode",destination=/app/identity \
	--mount type=bind,source="/home/luckierdodge/storj",destination=/app/config \
	--name storagenode storjlabs/storagenode:latest
