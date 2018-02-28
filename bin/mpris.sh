#!/bin/sh

HIDEFILE="/tmp/panel_mpris"

if [[ -z $(pgrep -x spotify) ]]; then
	exit
fi

media()
{
	STATUS=$(playerctl status)

	if [[ -z $STATUS ]]; then
		exit
	fi

	TITLE=$(playerctl metadata title | cut -c 1-100) &> /dev/null
	ARTIST=$(playerctl metadata artist | cut -c 1-100) &> /dev/null
	HIDE=$(cat $HIDEFILE)

	if [[ $HIDE -eq 1 ]]; then
		INFO="$ARTIST - $TITLE"
	else
		INFO=""
	fi

	if [[ $STATUS == "Paused" ]]; then
		LINE="  $INFO"
	else
		LINE="  $INFO"
	fi

	echo $LINE
}

toggle_bar()
{
	HIDE=`cat $HIDEFILE`

	if [[ $HIDE -eq 1 ]]; then
		echo 0 > $HIDEFILE
	else
		echo 1 > $HIDEFILE
	fi
}

if [[ $@ == "-t" ]]; then
	$(toggle_bar)
else
	echo $(media)
fi

exit
