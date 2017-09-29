# -*- mode: ruby -*-
# vi: set ft=ruby :
 
# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"
MAX_MEMORY = 1024
 
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
 
  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "ubuntu/trusty64"
  
  config.vm.network "public_network"
  
  config.vm.network "forwarded_port", guest:3000, host: 3000, host_ip: "127.0.0.1", auto_correct: true
  config.vm.network "forwarded_port", guest:5432, host: 4000, host_ip: "127.0.0.1", auto_correct: true
  config.vm.network "forwarded_port", guest:7000, host: 7000, host_ip: "127.0.0.1", auto_correct: true
  config.vm.network "forwarded_port", guest:8000, host: 8000, host_ip: "127.0.0.1", auto_correct: true
  config.vm.network "forwarded_port", guest:8080, host: 8080, host_ip: "127.0.0.1", auto_correct: true
  
  # Uncomment this if you want to link to a shared folder (e.g. if you are running source control and want to link it to Vagrant)
  config.vm.synced_folder "./cvapps", "/home/vagrant/cvapps", create: true, group: "vagrant", owner: "vagrant"
  
  config.vm.provider "virtualbox" do |v|
    v.memory = MAX_MEMORY
    v.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/home/vagrant/", "1"]
  end
 

 
  #config.vm.provision :shell, inline: "mkdir /home/vagrant/cvapps"
  #config.vm.provision :shell, inline: "mount -t vboxsf -o uid=`id -u vagrant`,gid=`getent group vagrant | cut -d: -f3` cvapps /home/vagrant/cvapps", run: "always"
 
  config.vm.provision "shell", path: "provision/setup.sh"
  config.vm.provision "shell", path: "provision/nodejs.sh"
  config.vm.provision "shell", path: "provision/postgresql.sh"
  config.vm.provision "shell", path: "provision/vim-setting.sh"
 
end