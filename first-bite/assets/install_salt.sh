#!/bin/bash

# Add the current saltstack repo to APT

# echo "waiting for .bashrc"
# until [ -f ~/.bash_aliases ]; do
# echo "."
# done
i=1
sp="/-\|"
echo -n ' '

until [ -d ~/dotfiles ]; do
printf "\b${sp:i++%${#sp}:1}"
sleep 1
done

echo -n ' '

if [ -f ~/dotfiles/bash_aliases ]; then
mv ~/dotfiles/bash_aliases ~/.bash_aliases
elif

if [ -f ~/dotfiles/vimrc ]; then
mv ~/dotfiles/vimrc ~/.vimrc
elif

. ~/.bash_aliases

cd ~/docker

#unzip sse_installer.zip

# we store PG data in a mounted volume that needs to exist prior to the docker
# container starting
mkdir pgdata

docker-compose up -d

# docker-compose exec sm sh /masterprep.sh

clear

docker-compose exec sm bash

# curl https://repo.saltstack.com/py3/ubuntu/16.04/amd64/2019.2/SALTSTACK-GPG-KEY.pub | apt-key add -
# echo "deb http://repo.saltstack.com/py3/ubuntu/16.04/amd64/2019.2 xenial main" > /etc/apt/sources.list.d/saltstack.list
# apt-get update

# # Install salt-master and salt-minion
# apt-get install -y salt-master salt-minion

# # restart the salt-master
# service salt-master restart

# # add some configurations to the salt-minion
# echo "master: localhost" > /etc/salt/minion.d/master.conf
# echo "id: saltmaster" > /etc/salt/minion.d/id.conf

# # restart the salt-minion
# service salt-minion restart

# # wait until the minion key appears then accept it
# echo "accepting minion key"
# until salt-key -l acc | grep -q -s saltmaster; do
#     sleep 1
#     salt-key -a saltmaster -y
# done


