#! /bin/sh
if [ $(pamixer --get-mute) = 'true' ];
then
	echo "MUTED]"
else
	echo "$(pamixer --get-volume)%]"
fi
