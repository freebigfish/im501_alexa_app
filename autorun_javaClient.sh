#!/bin/bash

ALEXA_ROOT=/home/pi/Desktop/alexa-avs-sample-app/samples
JAVA_CLIENTE_ROOT=javaclient
NODE=/usr/bin/node
MVN=/usr/bin/mvn

USER=pi
OUT=$ALEXA_ROOT/javaClient.log

cd $ALEXA_ROOT/$JAVA_CLIENTE_ROOT

case "$1" in
	start)
		echo "start java client for alexa"
#		sudo -u $USER $MVN exec:exec  > $OUT 2 > $OUT &
		sudo -u $USER $MVN exec:exec & 
		;;
	stop)
		killall $MVN
		;;
	*)
		echo "usage:$0(start|stop)"
esac

exit 0		

