#!/bin/bash

git submodule init
git submodule update
mv .vim ~/
mv .vimrc ~/
cd ..
rm -rf vim-mods
