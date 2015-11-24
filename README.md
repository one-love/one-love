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
  $ cd /vagrant/projects/backend
  $ ./manage.py runserver

Point your browser to [Vagrant VM](http://192.168.33.33/api/v1). Login with admin@example.com/Sekrit
