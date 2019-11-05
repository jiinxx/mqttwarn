#!/bin/bash
docker run -d --name mqttwarn \
    -v $PWD:/opt/mqttwarn/conf \
    -v $PWD:/opt/mqttwarn/functions \
    -v $PWD:/opt/mqttwarn/log \
    --restart unless-stopped \
    --link mosquitto \
    urmo/mqttwarn
