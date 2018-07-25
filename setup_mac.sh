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
brew install gsed

# Python
brew install python3
pip3 install --upgrade pip
pip3 install flake8
pip3 install pylint
pip3 install yapf

git clone https://github.com/phicdy/dotfiles.git
cd dotfiles
./install.sh
cd ..
