#!/usr/bin/env sh

# enable Minecraft
exec su-exec runner java -Xmx2048M -Xms512M -jar server.jar nogui
