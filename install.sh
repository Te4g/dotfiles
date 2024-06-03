#!/bin/bash

# Function to backup existing files
backup_file() {
    if [ -f "$1" ]; then
        mv "$1" "$1.bak"
    fi
}

# Symlink .bashrc
backup_file "$HOME/.bashrc"
ln -s "$HOME/.dotfiles/.bashrc" "$HOME/.bashrc"

# Symlink .gitconfig
backup_file "$HOME/.gitconfig"
ln -s "$HOME/.dotfiles/.gitconfig" "$HOME/.gitconfig"

# Symlink .gitignore
backup_file "$HOME/.gitignore"
ln -s "$HOME/.dotfiles/.gitignore" "$HOME/.gitignore"
