One Love
========

[![Build Status](https://travis-ci.org/one-love/ansible-one-love.svg?branch=master)](https://travis-ci.org/one-love/ansible-one-love)

### Requirements and development setup
- [VirtualBox](https://www.virtualbox.org/)
  - All boxes are tested in VirtualBox virtualization platform
- [Vagrant](http://www.vagrantup.com/)
  - To run all VirtualBox instances effortlessly, Vagrant is used to automate VM creation/provisioning/destruction

### First run
Clone this repo and `cd` into it. Run `vagrant up`. The process will take a while and should give you fully
configured VirtualBox VM instance.

ssh into vagrant machine and start the server:

    $ vagrant ssh onelove
    $ vagrant plugin install vagrant-hostsupdater
    $ dev.sh

Point your browser to [Vagrant VM](http://onelove.vagrant:5000/). Login with admin@example.com/Sekrit
