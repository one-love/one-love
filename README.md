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
Clone this repo, `cd` into it, and run `vagrant up`. The process will take a while and should give you fully configured VirtualBox VM instance. Point your browser to [Vagrant VM](http://172.12.8.101:8000/api/v1). Login with admin@example.com/Sekrit
