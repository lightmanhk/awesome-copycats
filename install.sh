#!/usr/bin/env sh

INSTALLDIR=${INSTALLDIR:-"$PWD"}
echo $INSTALLDIR

cd $INSTALLDIR
[ ! -d ~/.config ] && mkdir ~/.config
[ ! -d ~/.config/awesome ] && ln -vsfn $INSTALLDIR ~/.config/awesome
