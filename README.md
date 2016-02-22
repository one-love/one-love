One Love
========

### Requirements and development setup
- [VirtualBox](https://www.virtualbox.org/)
  - All boxes are tested in VirtualBox virtualization platform
- [Vagrant](http://www.vagrantup.com/)
  - To run all VirtualBox instances effortlessly, Vagrant is used to automate
    VM creation/provisioning/destruction

### First run
Clone this repo and `cd` into it. The process will take a while and should give
you fully configured VirtualBox VM instance.

    $ vagrant plugin install vagrant-hostsupdater
    $ vagrant up
    $ vagrant ssh onelove
    $ dev.sh

Point your browser to [Vagrant VM](http://onelove.vagrant:8080/).
Login with admin@example.com/Sekrit
