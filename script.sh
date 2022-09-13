#!/bin/bash

# It's necessary to add the submodules and push them before running this script. 

pushd ~
	if [ -d .vim ] && [ -a .vimrc ]
	then
		rm .vimrc
		rm -rf .vim
	fi

	CAMINHO=$(find -name vim-mods)
	cd $CAMINHO
	CAMINHO=$(pwd)
popd

if [[ ! $(pwd) == $CAMINHO ]]
then
	cd $CAMINHO
fi

git submodule init

git submodule update

mv .vim* ~/

mv script.sh ~/

cd ~

# rm -r $CAMINHO

# rm $0
