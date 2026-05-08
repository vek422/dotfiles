# Dotfiles

This repository contains the configuration files for my Arch Linux and Hyprland setup. It uses GNU Stow to manage symlinks declaratively and keep the home directory clean.

## Structure

The repository is organized into Stow "packages". Each package mirrors the structure of the home directory:

* `hyprland/`: Contains window manager and status bar configurations (e.g., `~/.config/hypr`, `~/.config/tofi`).
* `kitty/`: Contains Kitty Configurations
* `LigaDmMonoFont/`: Contains a custom patched font mapped directly to `~/.local/share/fonts/LigaDmMonoFont`.

## Automated Setup

This repository includes a declarative bootstrap script (`setup.sh`) to easily rebuild the environment on a fresh Arch Linux installation. 

The script will automatically:
1. Update the system and install prerequisites (Git, GNU Stow).
2. Install core applications via pacman.
3. Symlink all configuration packages to your home directory using GNU Stow.

To install:

```bash
# Clone the repository to your home directory
git clone [https://github.com/YOUR_USERNAME/dotfiles.git](https://github.com/YOUR_USERNAME/dotfiles.git) ~/dotfiles
cd ~/dotfiles

# Make the script executable
chmod +x setup.sh

# Run the setup
./arch-setup.sh
```