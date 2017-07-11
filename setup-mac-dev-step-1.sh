#!/bin/bash

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install ZSH
brew install zsh zsh-completions git

# Install ZSH
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# Install Java and Iterm
brew cask install java iterm2

# Clone Iterm Keybindings
mkdir iterm-keybindings
cp ./iterm-keybindings/com.googlecode.iterm2.plist
