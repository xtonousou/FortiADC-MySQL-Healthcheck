#!/bin/sh
# NODE_IP: the ip address of real server
# NODE_PORT: the port of real server
# UP: set the status of health-check to UP
# DOWN: set the status of health-check to DOWN
#

info=`curl -s -I $NODE_IP:$NODE_PORT`
echo $info

code=`echo $info|grep -o "OK"`
if [ "$code" == "OK" ]; then
	exit $UP
else
	exit $DOWN
fi
