#!/bin/bash

git submodule init
git submodule update
mv .vim* ~/
mv script.sh ~/
cd ~
rm -rf vim-mods
rm $0
