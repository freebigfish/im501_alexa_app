#!/bin/bash

ALEXA_ROOT=/home/pi/Desktop/alexa-avs-sample-app/samples
COMPANIONSERVICE_ROOT=companionService
NODE=/usr/bin/node
SERVER_JS_FILE=/home/pi/Desktop/alexa-avs-sample-app/samples/companionService/bin/www

USER=pi
OUT=/home/pi/Desktop/alexa-avs-sample-app/samples/companionService/npm-debug.log

case "$1" in
	start)
		echo "start npm:$NODE $SERVER_JS_FILE"
		sudo -u $USER $NODE $SERVER_JS_FILE > $OUT 2 > $OUT &
		;;
	stop)
		killall $NODE
		;;
	*)
		echo "usage:$0(start|stop)"
esac

exit 0		

