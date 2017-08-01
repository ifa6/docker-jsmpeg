#!/bin/sh

secret=${SECRET:-supersecret}; shift
webport=${WEB_PORT:-8080}; shift
streamport=${STREAM_PORT:-8081}; shift
websocket=${WEBSOCKET_PORT:-8082}; shift

cd /opt/jsmpeg
node websocket-relay.js ${secret} ${streamport} ${websocket} &
http-server -p ${webport}
