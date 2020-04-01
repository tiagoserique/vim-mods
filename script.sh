#!/bin/bash

CAMINHO=$( pwd )
git submodule init
git submodule update
mv .vim* ~/
mv script.sh ~/
cd ~
rm -rf $CAMINHO/vim-mods
rm $0
