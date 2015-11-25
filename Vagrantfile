# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.define "target" do |target|
        target.vm.box = "debian-8.2"
        target.vm.box_url = "https://github.com/one-love/vagrant-base-box/releases/download/v0.1/debian-8.2-x86_64.box"
        target.vm.network :private_network, ip: "192.168.33.34"
        target.vm.hostname = "target.vagrant"
    end

    config.vm.define "onelove" do |onelove|
        onelove.vm.box = "debian-8.2"
        onelove.vm.box_url = "https://github.com/one-love/vagrant-base-box/releases/download/v0.1/debian-8.2-x86_64.box"
        onelove.vm.network :private_network, ip: "192.168.33.33"
        onelove.vm.hostname = "onelove.vagrant"
        onelove.vm.provision :ansible, run: "always" do |ansible|
            ansible.playbook = "provision/site.yml"
            ansible.host_key_checking = false
            ansible.groups = {
                "vagrant" => ["onelove"],
            }
            ansible.verbose = "vv"
        end
    end
end
