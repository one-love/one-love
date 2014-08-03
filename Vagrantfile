# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "lugons"
  config.vm.box_url = "ftp://ftp.lugons.org/vagrant/debian-7.5.0-x86_64.box"
  config.vm.network :private_network, ip: "192.168.33.33"
  config.vm.provision :ansible do |ansible|
    ansible.playbook = "provision/site.yml"
    ansible.host_key_checking = false
    ansible.groups = {
      "vm" => ["default"],
    }
  end
end
