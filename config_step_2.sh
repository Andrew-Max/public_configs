#!/bin/bash

#=======================================
# Set up Ubuntu (key bindings must be set manually)
#=======================================
echo "setting up virtual windows"
gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ hsize 2
gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ vsize 2


#=======================================
# Set up Git (Git must be installed seperately before this)
#=======================================
echo "setting up git"
git config --global alias.co checkout
git config --global alias.stat status
# git config --global user.email "<your email>"
# git config --global user.name "<your first name>"

#=======================================
# Set up Unix User
#=======================================
echo "setting up unix user"
rm ~/.bashrc
cp -r ./.bashrc ~/.bashrc
source ~/.bashrc

mkdir ~/opt
touch ~/opt/gitignore_global
echo "**/notes.txt" > ~/opt/gitignore_global
echo "**/application.yml" >> ~/opt/gitignore_global
git config --global core.excludesfile ~/opt/gitignore_global


#=======================================
# Set up RVM
#=======================================
echo "setting up rvm"
gpg --keyserver hkp://pgp.mit.edu --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable --ruby
source ~/.rvm/scripts/rvm

#=======================================
# Set up Other Dev Dependencies
#=======================================
cd ~/opt

echo "setting up node"
sudo apt install nodejs -y
sudo apt install npm -y

echo "setting up postgres"
sudo apt-get install libpq-dev -y
sudo apt install postgresql postgresql-contrib -y


echo "setting up mysql"
sudo apt install default-libmysqlclient-dev -y
sudo apt-get install mysql-server -y

echo "installing chrome"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb -y

echo "installing imagemagick"
sudo apt install imagemagick -y

echo "installing chromium driver"
sudo apt install chromium-driver -y