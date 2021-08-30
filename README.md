# example_bashrc

Depends on the lines 
> $ sudo apt install git-all -y

> $ git config --global alias.co checkout

> $ git config --global alias.stat status
 
being run


## Instructions

### run config_step_1

> $ ./config_step_1.sh

### Restart your machine.

Go back to this directory.

### Run config_step_2

> $ ./config_step_2.sh

### Follow the manual setup steps below

=======================================================


#=======================================
# Manual Todos(Mandatory)
#=======================================
# - sudo chown -R <user>:<user> /usr/local

# - npm install --global yarn

# - edit pg_hba.conf

  1) Find you pg_hba.conf file. For me it is at /etc/postgresql/12/main/pg_hba.conf if you can't find it checkout https://askubuntu.com/questions/256534/how-do-i-find-the-path-to-pg-hba-conf-from-the-shell

  2) Around line 89 you will see a line that looks like
  `local   all             postgres ` you will want to replace the last word of that line which may be "peer" to "md5". This should allow you to connect to locally password protected databases as long as they are password protected. If you want to remove the necessity to have a password you can change "md5" to "trust". This is less secure and may not be recommended within a networked system. On my local machine I do use the "trust" option. This option will allow all all local database connection attempts

# make terminal login shell
# > file bar in terminal > edit > preferences > colors : uncheck "use transparency from system theme"
# > file bar in terminal > edit > preferences > command : check "run as loging shell"


#=======================================
# Manual Todos(optional)
#=======================================
# - key bindings (check below heading "Setting Up Virtual Window Hotkeys")
# - sublime config
# > there is a usable set of sublime configs at ./Preferences.sublime-settings
# > Open sublime text and on the top menu select "Preferences">"Settings"
# > This will open up two files. On the left will be undeditable default sublime configs. On the right will be a much smaller file of editable personable configs. Copy the above mentioned sublime configs, delete the entire contents of the file on the right and paste in the new configs
# git config --global user.email <your email here>
# git config --global user.name <your name here>



#=======================================
# Setting Up Virtual Window Hotkeys
#=======================================
# Open the finder and search for and open `keyboard`
# go to the `shortcuts` tab
# Go to the navigation sub tab

# change "move window one workspace up" to `shift+ctrl+alt+up`
# change "move window one workspace up" to `shift+ctrl+alt+up`
# change "switch to worspace above" to `ctrl+alt+up`
# change "switch to worspace below" to `ctrl+alt+down`



#=======================================
# Optional
#=======================================