#!/usr/bin/env bash
#Desc: a basic install file

PICS="pixmaps/"
THEME="theme.cfg"
NAME="mediterranean"
FLUXHOME="$HOME/.fluxbox"
PATHFILE="$FLUXHOME/styles/$NAME"

cp -v $THEME $PATHFILE

if [ -d $HOME/.fluxbox/pixmaps ];then 
        mv -v $HOME/.fluxbox/pixmaps $HOME/.fluxbox/pixmaps.old
    else
        mkdir -vp $HOME/.fluxbox/pixmaps 
fi

cp -v $PICS/* $HOME/.fluxbox/pixmaps/

sed -i "s/session.styleFile:.*/session.styleFile:    $(echo $PATHFILE|sed 's/\//\\\//g')/" $FLUXHOME/init
[ $? -eq 0 ] && echo "Theme installed, please reload fluxbox and enjoy :)"
