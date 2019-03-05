#!/bin/bash

# Add the current saltstack repo to APT

cp ~/dotfiles/bashrc ~/.bashrc
cp ~/dotfiles/vimrc ~/.vimrc
mv ~/tutorial/master.d ~/tutorial/docker/
mv ~/tutorial/minion.d ~/tutorial/docker/

sleep 1

source ~/.bashrc

cd ~/tutorial/docker
docker-compose up -d
exit



curl https://repo.saltstack.com/py3/ubuntu/16.04/amd64/2019.2/SALTSTACK-GPG-KEY.pub | apt-key add -
echo "deb http://repo.saltstack.com/py3/ubuntu/16.04/amd64/2019.2 xenial main" > /etc/apt/sources.list.d/saltstack.list
apt-get update

# Install salt-master and salt-minion
apt-get install -y salt-master salt-minion

# restart the salt-master
service salt-master restart

# add some configurations to the salt-minion
echo "master: localhost" > /etc/salt/minion.d/master.conf
echo "id: saltmaster" > /etc/salt/minion.d/id.conf

# restart the salt-minion
service salt-minion restart

# wait until the minion key appears then accept it
echo "accepting minion key"
until salt-key -l acc | grep -q -s saltmaster; do
    sleep 1
    salt-key -a saltmaster -y
done
