#! /usr/bin/bash
if [[ ! -d ~/vimtmp ]]; then
    echo "The ~/vimtmp directory does not exist, creating it and setting 700 permissions\n"
    mkdir ~/vimtmp
    chmod 700 ~/vimtmp
fi
if [[ ! -d ~/vimtmp/nvim ]]; then
    echo "The ~/vimtmp/nvim directory does not exist, creating it and setting 700 permissions\n"
    mkdir ~/vimtmp/nvim
    chmod 700 ~/vimtmp/nvim
fi
if [[ ! -d ~/vimtmp/nvim/backups ]]; then
    echo "The ~/vimtmp/nvim/backups directory does not exist, creating it and setting 700 permissions\n"
    mkdir ~/vimtmp/nvim/backups
    chmod 700 ~/vimtmp/nvim/backups
fi
if [[ ! -d ~/vimtmp/nvim/undodir ]]; then
    echo "The ~/vimtmp/nvim/undodir directory does not exist, creating it and setting 700 permissions\n"
    mkdir ~/vimtmp/nvim/undodir
    chmod 700 ~/vimtmp/nvim/undodir
fi
if [[ ! -d ~/vimtmp/vim ]]; then
    echo "The ~/vimtmp/vim directory does not exist, creating it and setting 700 permissions\n"
    mkdir ~/vimtmp/vim
    chmod 700 ~/vimtmp/vim
fi
if [[ ! -d ~/vimtmp/vim/backups ]]; then
    echo "The ~/vimtmp/vim/backups directory does not exist, creating it and setting 700 permissions\n"
    mkdir ~/vimtmp/vim/backups
    chmod 700 ~/vimtmp/vim/backups
fi
if [[ ! -d ~/vimtmp/vim/undodir ]]; then
    echo "The ~/vimtmp/vim/undodir directory does not exist, creating it and setting 700 permissions\n"
    mkdir ~/vimtmp/vim/undodir
    chmod 700 ~/vimtmp/vim/undodir
fi
echo "Finished checking and generating vimtmp/nvim directories and subdirectories"
echo "In order to properly set up vim/gvim, create a softlink from ~/.vimrc to the git clone vim/vimrc"
echo "Also, dont forget to install vim-plug: https://github.com/junegunn/vim-plug"
echo "I recommend adding the following to a crontab to prevent these directories from using too much disk space (modify it based on your home disk space allocation):"
echo "  #Remove files older than 30 days or larger than 10M from ~/vimtmp every day"
echo "  0 0 * * * find ~/vimtmp -type f -mtime +30 -o -size +10M -delete"
