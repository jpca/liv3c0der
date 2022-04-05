#!/bin/sh
echo "killing SAMPlESERVER"
#killall ruby
cd ./ruby-sample-server
PID=$(cat SAMPLESERVER_PID)
kill $PID

echo "killing LIVECODER"
#killall node
cd ../live3c0der
PID=$(cat LIVECODER_PID)
kill $PID