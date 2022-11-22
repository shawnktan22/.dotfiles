#!/bin/bash

#saves the output of unmame into the variable 'OS'
OS=$(uname)
#if statement to check if the value of uname equals 'Linux'
if [[ "$OS" == 'Linux' ]]; then
	#prints nothing if uname equals 'Linux'
	echo ""
#else statement runs if value of uname does not equal 'Linux'
else
	#sends message to a file called 'linuxsetup.log'
	echo "Operating system is not Linux" >> linuxsetup.log
	#exits the script
	exit
fi

#saves the '.vimrc' file into the variable 'FILE'
FILE=~/.vimrc
#checks to see if the '.vimrc' file exists
if [ -f "$FILE" ]; then
	#renames the '.vimrc' file to '.bup_vimrc' in the home directory
	mv ~/.vimrc ~/.bup_vimrc
	#prints the text in quotations into the file 'linuxsetup.log'
	echo "the '.vimrc' file has been renamed to '.bup_vimrc'." >> linuxsetup.log
fi

#redirects everyting in the 'vimrc' file to the file '.vimrc' in the home directory
cat ~/.dotfiles/etc/vimrc > ~/.vimrc
#appends the text in quotations into the file '.bashrc' in the home directory
echo "source ∼/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
#makes the '.TRASH' directory in the home directory
mkdir -p  ~/.TRASH
