One Love
========

[![Build Status](https://travis-ci.org/one-love/ansible-one-love.svg?branch=master)](https://travis-ci.org/one-love/ansible-one-love)

### Requirements and development setup
- [VirtualBox](https://www.virtualbox.org/)
  - All boxes are tested in VirtualBox virtualization platform
- [Vagrant](http://www.vagrantup.com/)
  - To run all VirtualBox instances effortlessly, Vagrant is used to automate VM creation/provisioning/destruction
- [Ansible](http://www.ansible.com/)
  - Server setup and configuration is done through Ansible for One Love, as for all other applications

### First run
Clone this repo, `cd` into it, and run `vagrant up`. The process will take a while and should give you fully configured VirtualBox VM instance. Execute `vagrant ssh onelove` and you'll be inside VM, ready to develop. Run `~/bin/runserver.sh` and point your browser to [Vagrant VM](http://192.168.33.33:8000). Login with admin@example.com/Sekrit
