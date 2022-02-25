#!/bin/bash

#change default shell.use fish
chsh -s /usr/bin/fish
mkdir -p ~/.config/fish
rm ~/.config/fish/config.fish
rm ~/.config/fish/fishfile
SCRIPT_DIR=$(cd $(dirname $0); pwd)
ln -s ${SCRIPT_DIR}/../fisher/config/config.fish ~/.config/fish/config.fish

#install fisher
mkdir -p ~/.config/fish/functions
curl -sL https://git.io/fisher | source && fisher install rafaelrinaldi/pure