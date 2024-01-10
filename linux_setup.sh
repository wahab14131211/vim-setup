#! /usr/bin/bash
if [[ ! -d ~/nvimtmp ]]; then
    echo "The ~/nvimtmp directory does not exist, creating it and setting 700 permissions\n"
    mkdir ~/nvimtmp
    chmod 700 ~/nvimtmp
fi
if [[ ! -d ~/nvimtmp/backups ]]; then
    echo "The ~/nvimtmp/backups directory does not exist, creating it and setting 700 permissions\n"
    mkdir ~/nvimtmp/backups
    chmod 700 ~/nvimtmp/backups
fi
if [[ ! -d ~/nvimtmp/undodir ]]; then
    echo "The ~/nvimtmp/undodir directory does not exist, creating it and setting 700 permissions\n"
    mkdir ~/nvimtmp/undodir
    chmod 700 ~/nvimtmp/undodir
fi
echo "Finished checking and generating nvimtmp directories and subdirectories"
