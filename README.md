# My Dotfiles
These are my dotfile configuration files for different software in Bash. There are two scripts and a makefile that executes both scripts

The 'linux' script first checks to see if the operating system is Linux. Then it renames the '.vimrc' file to '.bup_vimrc' and records this change in a file called 'linuxsetup.log'. Everything in the 'vimrc' file is copied to the '.vimrc' and the text ‘source ∼/.dotfiles/etc/bashrc custom’ is appended to the file '.bashrc'. 

The 'cleanup' script reverts everything to how it was before the 'linux' script was run. It deletes the '.vimrc' file, removes the line it added to the '.bashrc' file, and removes the '.TRASH' directory.

## .vimrc
This is my custom .vimrc configuration for Vim.

syntax on (commands, varibles, etc. are highlighted)
set number (line numbers shown)
set autoindent (auto-indents lines)
set ruler (shows row and column position of cursor)
color elflord (changes color of highlighted syntax)
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

## .bashrc
This is my custom .bashrc configuration for Bash. It features multiple aliases and functions for conveninence. The aliases and functions work as shortcuts for simple commands that may be used often. For example 'ls -a' is shortened to lsa using an alias.
