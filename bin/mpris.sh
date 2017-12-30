#!/bin/sh

SPOTIFY=`ps -A | grep spotify | tail -1 | awk '{print $4}'`

if [[ -z $SPOTIFY ]]
then
    exit
fi

media()
{
    STATUS=`playerctl status` &> /dev/null

    if [[ -z $STATUS ]]
    then
        exit
    fi

    TITLE=`playerctl metadata title | cut -c 1-100` &> /dev/null
    ARTIST=`playerctl metadata artist | cut -c 1-100` &> /dev/null

    INFO=""
    HIDE=`cat $HIDEFILE`

    if [[ $HIDE -eq 1 ]]
    then
        INFO="$ARTIST - $TITLE"
    fi

    if [[ $STATUS == "Paused" ]]
    then 
        LINE="$SPACES  $INFO$SPACES"
    else
        LINE="$SPACES  $INFO$SPACES"
    fi

    echo $LINE
}

toggle_bar()
{
    HIDE=`cat $HIDEFILE`
  
  	if [[ $HIDE -eq 1 ]]
    then
		echo 0 > $HIDEFILE
	else
		echo 1 > $HIDEFILE
    fi

}

if [[ $@ == "-t" ]]
then
	$(toggle_bar)
else
	echo $(media)
fi
