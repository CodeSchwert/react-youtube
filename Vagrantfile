# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "maelstromtechnology/centos7-devel"
  config.vm.box_url = "http://maelstrom.technology/boxes/centos7-devel/v2/metadata.json"
  config.vm.box_version = "2.1.0"
  config.vm.provision :shell, path: "provision.sh"

  config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
  config.vm.network "forwarded_port", guest: 3000, host: 3000, host_ip: "127.0.0.1"
  config.vm.network "forwarded_port", guest: 5000, host: 5000, host_ip: "127.0.0.1"
  config.vm.network "forwarded_port", guest: 8080, host: 8080, host_ip: "127.0.0.1"

  config.vm.provider "virtualbox" do |vb|
  	vb.memory = "2048"
    vb.cpus = 2
  end

end
