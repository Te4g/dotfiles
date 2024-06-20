#!/bin/sh

# Personal setup script for OSX
echo "Installing brew..."
/bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing brew cask..."
brew install cask

# Dev Tools
brew install git
brew install gh
brew install nvm
brew install pnpm
brew install php@8.1 php@8.2 php@8.3
brew install symfony-cli/tap/symfony-cli
brew install platformsh/tap/platformsh-cli
brew install --cask docker
brew install podman-desktop
brew install --cask jetbrains-toolbox
brew install --cask vscodium
brew install --cask postman

# Devops Tools
brew install opentofu
brew install openstackclient
brew install ansible
brew install serverless

# Communication Apps
brew install --cask slack
brew install --cask microsoft-teams

# Web Tools
brew install youtube-dl
brew install --cask google-chrome
brew install --cask chromium
brew install --cask vlc
brew install --cask teamviewer

# Utils
brew install neovim
brew install coreutils
brew install jq
brew install bat # A cat(1) clone with wings.
brew install tlrc # A rust client for https://github.com/tldr-pages/tldr

# Miscellaneous
brew install --cask amazon-music
brew install --cask raycast # An app to control your tools with a few keystrokes
brew install jump # A fast way to navigate your filesystem from the command line
brew install navi # An interactive cheatsheet tool for the command-line

# Ffmpeg
brew tap homebrew-ffmpeg/ffmpeg
brew install homebrew-ffmpeg/ffmpeg/ffmpeg --with-librsvg --with-openjpeg --with-libvmaf --with-zeromq

# Custom shell
brew install --cask iterm2
brew install pure
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
