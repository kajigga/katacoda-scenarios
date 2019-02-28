#!/bin/sh


wget -O - https://repo.saltstack.com/py3/ubuntu/16.04/amd64/2019.2/SALTSTACK-GPG-KEY.pub | sudo apt-key add -

echo "deb http://repo.saltstack.com/py3/ubuntu/16.04/amd64/2019.2 xenial main" > /etc/apt/sources.list.d/saltstack.list

apt-get update
apt-get install salt-master salt-minion 

service salt-master start

echo "master: localhost" > /etc/salt/minion.d/master.conf
echo "id: saltmaster" > /etc/salt/minion.d/id.conf

salt-key --gen-keys saltmaster

mv ./saltmaster.pub /etc/salt/pki/minion/minion.pub
mv ./saltmaster.pem /etc/salt/pki/minion/minion.pem

service salt-minion restart


