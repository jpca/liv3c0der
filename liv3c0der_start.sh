#!/bin/sh

#function int-ip { /sbin/ifconfig $1 | grep "inet addr" | awk -F: '{print $2}' | awk '{print $1}'; }
 
echo "launching SAMPlESERVER"
cd ./ruby-sample-server
nohup ruby app.rb samples & > ruby-sample-server.log
echo $! > SAMPLESERVER_PID

echo "launching LIVECODER"
cd ../live3c0der
nohup node node_server.js & > node-liv3c0der.log
echo $! > LIVECODER_PID
echo "liv3c0der available at localhost:8000"
#MYIP=$(int-ip eth0)
#echo $MYIP:8000