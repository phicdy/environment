#!/bin/bash

WORKSPACE=${HOME}/Documents/

# src dir
mkdir -p ${WORKSPACE}/script
cp android_screenshot.sh ${WORKSPACE}/script/

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

mkdir -p ${WORKSPACE}/github
cd ${WORKSPACE}/github
git clone https://github.com/phicdy/dotfiles.git
cd dotfiles
./install.sh
cd ..
