# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "scarcity"
  config.vm.box_url = "https://s3.amazonaws.com/nandorocker-vagrant-boxes/scarcity.box"
  config.vm.network :forwarded_port, guest: 80, host: 8085
end
