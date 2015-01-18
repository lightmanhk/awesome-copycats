#!/usr/bin/env sh

INSTALLDIR=${INSTALLDIR:-"$PWD"}
echo $INSTALLDIR

if [ `pwd` = `readlink ~/.config/awesome` ]; then
  echo "Removing ~/.config/awesome"
  rm ~/.config/awesome
fi
