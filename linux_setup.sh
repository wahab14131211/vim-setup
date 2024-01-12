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
echo "Finished checking and generating vimtmp/nvim directories and subdirectories"
echo "I recommend adding the following to a crontab to prevent these directories from using too much disk space (modify it based on your home disk space allocation):"
echo "  #Remove files older than 30 days or larger than 10M from ~/vimtmp every day"
echo "  0 0 * * * find ~/vimtmp -type f -mtime +30 -o -size +10M -delete"
