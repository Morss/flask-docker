# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "williamyeh/ubuntu-trusty64-docker"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
  end

  config.vm.provision "shell", inline: <<-SHELL
    cd /vagrant
    docker build -t flaskapp .
    docker run -d -P flaskapp
    docker ps
  SHELL
  
  config.vm.define "docker-host" do |host|
      host.vm.network :private_network, :ip => '192.168.59.200'
  end
end
