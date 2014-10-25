One Love
========

[![Build Status](https://travis-ci.org/one-love/ansible-one-love.svg?branch=master)](https://travis-ci.org/one-love/ansible-one-love)

### Requirements and development setup
- [VirtualBox](https://www.virtualbox.org/)
  - All boxes are tested in VirtualBox virtualization platform
- [Vagrant](http://www.vagrantup.com/)
  - To run all VirtualBox instances effortlessly, Vagrant is used to automate VM creation/provisioning/destruction
- [NFS](http://en.wikipedia.org/wiki/Network_File_System)
  - Code and services on the host are shared with Vagrant box through NFS

### First run
Clone this repo and `cd` into it. Set user-data with `cp user-data.sample user-data`. Run `vagrant up`. The process will take a while and should give you fully configured VirtualBox VM instance. Point your browser to [Vagrant VM](http://172.17.8.101/api/v1). Login with admin@example.com/Sekrit
