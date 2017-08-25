# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "williamyeh/ubuntu-trusty64-docker"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
  end

  config.vm.provision "shell", inline: <<-SHELL
    docker rm -f `docker ps -aq`
    docker build -t flaskapp /vagrant/flaskapp
    docker build -t frontend /vagrant/frontend
    docker run -d -p 8081:80 --name flaskapp flaskapp 
    docker run -d -p 8080:80 --name frontend --link flaskapp:flaskapp frontend 
    docker ps
  SHELL

  config.vm.define "docker-host" do |host|
      host.vm.network :private_network, :ip => '192.168.59.200'
  end
end
