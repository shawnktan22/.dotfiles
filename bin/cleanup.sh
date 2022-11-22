#!/bin/bash

#deletes the '.vimrc' file in the home directory
rm ~/.vimrc
#removes the text in quotations from the '.bashrc' file in the home directory
sed -i 's/source ∼\/\.dotfiles\/bashrc_custom//g' ~/.bashrc
#deletes the '.TRASH' directory in the home directory
rm -r  ~/.TRASH
