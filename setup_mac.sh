#!/bin/bash

# Workspace
WORKSPACE=/usr/local/worksapce/
mkdir -p ${WORKSPACE}
cd ${WORKSPACE}

# src dir
mkdir -p /usr/local/src/
cp android_screenshot.sh /usr/local/src/

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install tree
brew install ffmpeg
brew install tmux
brew install wget

# Python
brew install python3
brew install flake8
brew install pylint
brew install yapf

git clone https://github.com/phicdy/dotfiles.git
cd dotfiles
./install.sh
cd ..