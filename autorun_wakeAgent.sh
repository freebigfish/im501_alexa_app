#!/bin/bash

ALEXA_ROOT=/home/pi/Desktop/alexa-avs-sample-app/samples
WAKE_AGENT_ROOT=wakeWordAgent/src

NODE=/usr/bin/node
MVN=/usr/bin/mvn
WAKEAGENT=$ALEXA_ROOT/$WAKE_AGENT_ROOT/wakeWordAgent

USER=pi
OUT=$ALEXA_ROOT/wakeWordAgent.log

cd $ALEXA_ROOT/$WAKE_AGENT_ROOT

case "$1" in
	start)
		echo "start java client for alexa"
		sudo -u $USER $WAKEAGENT -e kitt_ai  
		;;
	stop)
		killall $WAKEAGENT
		;;
	*)
		echo "usage:$0(start|stop)"
esac

exit 0		

