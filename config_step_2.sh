#!/bin/bash

#=======================================
# Set up Ubuntu (key bindings must be set manually)
#=======================================
gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ hsize 2
gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ vsize 2


#=======================================
# Set up Git (Git must be installed seperately before this)
#=======================================
git config --global alias.co checkout
git config --global alias.stat status


#=======================================
# Set up Unix User
#=======================================
rm ~/.bashrc
cp -r ./.bashrc ~/.bashrc

mkdir ~/opt
touch ~/opt/gitignore_global
echo "**/notes.txt" > ~/opt/gitignore_global
echo "**/application.yml" >> ~/opt/gitignore_global
git config --global core.excludesfile ~/opt/gitignore_global

#=======================================
# Set up Sublime Text
#=======================================
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install sublime-text -y


#=======================================
# Set up RVM
#=======================================
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
gpg --keyserver hkp://pgp.mit.edu --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
sudo apt install curl -y
\curl -sSL https://get.rvm.io | bash -s stable --ruby
\source ~/.rvm/scripts/rvm

#=======================================
# Set up Other Dev Dependencies
#=======================================
sudo apt install nodejs -y
sudo apt install npm -y

sudo apt-get install libpq-dev -y
sudo apt install postgresql postgresql-contrib -y

sudo apt install default-libmysqlclient-dev -y
sudo apt-get install mysql-server -y

cd ~/opt
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo apt install ./google-chrome-stable_current_amd64.deb -y
sudo apt install imagemagick -y

#=======================================
# Manual Todos
#=======================================
# - key bindings
# - sublime config
# - sudo chown -R <user>:<user> ./local
# - npm install --global yarn
# - edit pg_hba.conf
# git config --global user.email <your email here>
# git config --global user.name <your name here>