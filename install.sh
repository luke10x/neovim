#!/bin/bash

SCRIPT_DIR=$(dirname $(readlink -f $0))
INITIAL_DIR=`pwd`

cd $SCRIPT_DIR
git submodule init
git submodule update

cd ~
mkdir -p ~/.config
rm ~/.config/nvim 
ln -s $SCRIPT_DIR/config ~/.config/nvim

