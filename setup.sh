#!/bin/bash

# =============================================================================
# Configuration
# =============================================================================

# Core system utilities needed for the setup
SYSTEM_PACKAGES=(
    "git"
    "stow"
    "base-devel"
)

# Your daily driver applications and Hyprland dependencies
APP_PACKAGES=(
    "hyprland"
    "tofi"
    "kitty"
    "zsh"
    "neovim"
    "ttf-jetbrains-mono-nerd"
)

# The folders inside ~/dotfiles that need to be stowed
STOW_FOLDERS=(
    "hyprland"
    "kitty"
    "tofi"
    "LigaDmMonoFont"
)

# =============================================================================
# Execution
# =============================================================================

echo "Starting the dotfiles setup process..."

# 1. Update the system and install prerequisites
echo "Updating system and installing core utilities..."
sudo pacman -Syu --noconfirm "${SYSTEM_PACKAGES[@]}"

# 2. Install your core applications
echo "Installing application packages..."
sudo pacman -S --noconfirm "${APP_PACKAGES[@]}"

# 3. Stow the configuration packages
echo "Stowing configuration files..."
cd ~/dotfiles || exit

for folder in "${STOW_FOLDERS[@]}"; do
    echo " -> Stowing $folder..."
    stow "$folder"
done

# 4. Resetting font cache
echo "Resetting font-cache"
fc-cache -fv

echo "Setup completed!"
