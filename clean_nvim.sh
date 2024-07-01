#!/bin/bash

# Source : https://gist.github.com/FottyM/ce480b1b2cbc4549b48ad96f01ea0b59#file-uninstall_nvim-sh

# Log function to print messages to stdout and stderr
function log {
    if [ $1 == "success" ]; then
        echo -e "\033[32m[`date +'%Y-%m-%d %H:%M:%S'`] $2\033[0m"
    else
        echo -e "\033[31m[`date +'%Y-%m-%d %H:%M:%S'`] $2\033[0m" >&2
    fi
}

log "success" "Starting Neovim uninstallation..."

# Remove Neovim package files
log "success" "Removing Neovim package files..."
if sudo rm -rf /usr/local/nvim/ /usr/local/bin/nvim /usr/local/share/nvim/ ~/.local/share/nvim ~/.local/share/nvim.bak; then
    log "success" "Neovim package files removed successfully."
else
    log "error" "Failed to remove Neovim package files."
fi

# Remove Neovim configuration files
log "success" "Removing Neovim configuration files..."
if rm -rf ~/.config/nvim ~/.cache/nvim.bak; then
    log "success" "Neovim configuration files removed successfully."
else
    log "error" "Failed to remove Neovim configuration files."
fi

# Remove Neovim plugins and packages
vim_dir=~/.config/nvim
log "success" "Removing Neovim plugins and packages..."
if [ -d "$vim_dir/pack" ]; then
    rm -rf $vim_dir/pack/*
fi
if [ -f "$vim_dir/init.vim" ]; then
    sed -i '' '/call plug#/d' $vim_dir/init.vim
fi
if [ $? -eq 0 ]; then
    log "success" "Neovim plugins and packages removed successfully."
else
    log "error" "Failed to remove Neovim plugins and packages."
fi

# Remove Neovim plugin managers
log "success" "Removing Neovim plugin managers..."
if [ -f "$vim_dir/autoload/plug.vim" ]; then
    rm -rf $vim_dir/autoload/plug.vim $vim_dir/plugged
fi
if [ -f "$vim_dir/autoload/vundle.vim" ]; then
    rm -rf $vim_dir/bundle $vim_dir/autoload/vundle.vim $vim_dir/autoload/vim-pathogen.vim
fi
if [ $? -eq 0 ]; then
    log "success" "Neovim plugin managers removed successfully."
else
    log "error" "Failed to remove Neovim plugin managers."
fi

log "success" "Neovim uninstallation complete."
