sudo apt-get update
sudo apt-get install -y git
sudo apt-get install -y curl
sudo apt-get install -y exuberant-ctags
sudo apt-get install -y vim-gnome
# Neobundle
git clone https://github.com/phicdy/dotfiles.git
cd dotfiles & ./install.sh
cd ..

# Android
sudo chmod -R 777 /opt

## SDK
wget http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz
tar zxvf android-sdk_r24.4.1-linux.tgz & rm android-sdk_r24.4.1-linux.tgz
mv android-sdk-linux /opt/android-sdk-linux_86
export PATH=$PATH:/opt/android-sdk-linux_86/tools:/opt/android-sdk-linux_86/platform-tools:/opt/android-sdk-linux_86/build-tools/23.0.1/
export ANDROID_HOME=/opt/android-sdk-linux_86
echo y | android update sdk --no-ui --all  --filter platform-tools,build-tools-23.0.1,build-tools-22.0.1,build-tools-19.0.0,android-23,android-21,android-17,android-18,android-14,extra-android-support,extra-android-m2repository,extra-google-m2repository

## NDK
wget http://dl.google.com/android/ndk/android-ndk-r9d-linux-x86.tar.bz2
bzip2 -dc android-ndk-r9d-linux-x86.tar.bz2 | tar xvf -
rm android-ndk-r9d-linux-x86.tar.bz2
mv android-ndk-r9d /opt/

## 32bit dependency
sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install -y libncurses5:i386 libstdc++6:i386 zlib1g:i386

# Jenkins
wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install -y jenkins
sudo perl -i -pe 's/HTTP_PORT=8080/HTTP_PORT=65000/' /etc/default/jenkins
sudo service jenkins start

# SSH
sudo apt-get install -y openssh-server
mkdir ~/.ssh
chmod 700 ~/.ssh

# Android Stdudio
wget https://dl.google.com/dl/android/studio/ide-zips/1.4.0.10/android-studio-ide-141.2288178-linux.zip

# Java
#sudo apt-get install openjdk-7-jdk
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java8-installer
sudo rm -rf /var/lib/apt/lists/*
sudo rm -rf /var/cache/oracle-jdk8-installer
export JAVA_HOME=/usr/lib/jvm/java-8-oracle

# Gradle
wget https://services.gradle.org/distributions/gradle-2.4-all.zip
mkdir -p ~/gradle
mv gradle-2.4-all.zip ~/gradle/

# GenyMotion
wget https://dl.dropboxusercontent.com/u/14700716/XDA-Shares/Genymotion-ARM-Translation_v1.1.zip

# VirtualBox
sudo sh -c "echo 'deb http://download.virtualbox.org/virtualbox/debian vivid contrib' >> /etc/apt/sources.list"
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install virtualbox-5.0

# Japanese
wget -q https://www.ubuntulinux.jp/ubuntu-ja-archive-keyring.gpg -O- | sudo apt-key add -
wget -q https://www.ubuntulinux.jp/ubuntu-jp-ppa-keyring.gpg -O- | sudo apt-key add -
sudo wget https://www.ubuntulinux.jp/sources.list.d/trusty.list -O /etc/apt/sources.list.d/ubuntu-ja.list
sudo apt-get update
sudo apt-get install ubuntu-defaults-ja

# ant
sudo apt-get install -y ant

# tmux
sudo apt-get install -y tmux
sudo apt-get install -y xsel

# ansible
sudo apt-get install -y software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible

# pip
sudo apt-get install -y python-pip
