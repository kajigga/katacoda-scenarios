#!/bin/sh

wget -O - https://repo.saltstack.com/py3/ubuntu/16.04/amd64/2019.2/SALTSTACK-GPG-KEY.pub | sudo apt-key add -
echo "deb http://repo.saltstack.com/py3/ubuntu/16.04/amd64/2019.2 xenial main" > /etc/apt/sources.list.d/saltstack.list
apt-get update
apt-get install -y salt-master salt-minion --allow-unauthenticated
service salt-master start
echo "master: localhost" > /etc/salt/minion.d/master.conf
echo "id: saltmaster" > /etc/salt/minion.d/id.conf
service salt-minion start
echo "accepting minion key"
until salt-key -l acc | grep saltmaster; do
    sleep 1
    salt-key -a saltmaster -y
done

