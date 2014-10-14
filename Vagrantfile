# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.define "target" do |target|
        target.vm.box = "trusty"
        target.vm.box_url = "ftp://ftp.lugons.org/vagrant/ubuntu-14.04.1-x86_64.box"
        target.vm.network :private_network, ip: "192.168.33.34"
    end

    config.vm.define "onelove" do |onelove|
        onelove.vm.box = "trusty"
        onelove.vm.box_url = "ftp://ftp.lugons.org/vagrant/ubuntu-14.04.1-x86_64.box"
        onelove.vm.network :private_network, ip: "192.168.33.33"
        onelove.vm.provision :ansible do |ansible|
            ansible.playbook = "provision/site.yml"
            ansible.host_key_checking = false
            ansible.groups = {
                "vagrant" => ["onelove"],
            }
        end
    end
end
