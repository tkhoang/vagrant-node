#!/bin/bash
 
echo "*******************************" 
echo "Provisioning virtual machine..."
echo "*******************************" 
 
 
echo "***********************"
echo "Updating apt sources..."
echo "***********************"
sudo apt-get -o Acquire::ForceIPv4=true -qq update
sudo apt-get -o Acquire::ForceIPv4=true update

echo "***********************"
echo "Updating python..."
echo "***********************"
sudo add-apt-repository ppa:fkrull/deadsnakes
sudo apt-get -o Acquire::ForceIPv4=true update
sudo apt-get -o Acquire::ForceIPv4=true install python2.7


echo "***********************"
echo "Installing sqlite ..."
echo "***********************"
sudo apt-get -o Acquire::ForceIPv4=true install sqlite3 libsqlite3-dev

echo "***********************"
echo "Installing git ..."
echo "***********************"
sudo apt-get -o Acquire::ForceIPv4=true install git
 
 
#echo "***********************************"
#echo "Install and re-link node and npm..."
#echo "***********************************"
#sudo apt-get -o Acquire::ForceIPv4=true -y -qq install build-essential nodejs npm redis-server
#sudo npm cache clean -f
#sudo npm install -g npm
#sudo npm install -g n
#sudo n stable
#sudo hash -d npm
#sudo ln -s "$(which nodejs)" /usr/bin/node
#sudo chown -R vagrant:vagrant /home/vagrant --quiet

#echo "Fixing symlink issue with npm..."
 # backup .bashrc since we're going to change it
#cp /home/vagrant/.bashrc /home/vagrant/.bashrc.backup
 
 
echo "*********************************"
echo "Success! Navigate to localhost..."
echo "*********************************"