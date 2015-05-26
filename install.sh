#!/usr/bin/env bash
#Desc: a basic install file

PICS="pixmap/"
THEME="theme.cfg"
NAME="mediterranean"
PATHFILE="$HOME/.fluxbox/styles/$NAME"
cp $THEME $PATHFILE

if [ -d $HOME/.fluxbox/pixmaps ];then 
        mv -v $HOME/.fluxbox/pixmaps $HOME/.fluxbox/pixmaps.old
    else
        mkdir -vp $HOME/.fluxbox/pixmaps 
fi

cp -v $PICS/* $HOME/.fluxbox/pixmaps/

sed -i "s/session.styleFile:.*/session.styleFile:    $PATHFILE"
echo "Theme installed, please reload fluxbox and enjoy :)"
