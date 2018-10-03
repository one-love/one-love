[![Stories in Ready](https://badge.waffle.io/one-love/one-love.png?label=ready&title=Ready)](https://waffle.io/one-love/one-love)
One Love
========

### Overview
One love is a web-based application designed to make managing multiple hosts easier.

It uses [Ansible](https://www.ansible.com/) roles which are shared via [Galaxy](https://galaxy.ansible.com) hosting providers APIs and [Docker Compose](https://docs.docker.com/compose/) to make a powerful interface which controls all the aspects of the cloud infrastructure.

The main idea behind One Love is to automate the process of seting-up and configuring different host machines on different host providers.

You will be able to group multiple hosts together, and apply certain roles to the every group member therefor making the management of large number of machines a lot easier.

### Quick Start

#### Requirements and development setup
- [Docker Engine](https://docs.docker.com/engine/installation/)
  - Every repo uses docker image/container
- [Docker Compose](https://docs.docker.com/compose/)
  - To connect containers. Usually `pip install docker-compose` is enough.


#### First run
Clone this repo and `cd` into it. The process will take a while and should give
you fully configured Docker environment.
```
$ vagrant up # OPTIONAL: needed only to run provision
$ ./download-repos.sh
$ docker-compose up -d
$ docker-compose exec backend bin/default_admin.sh
$ docker-compose logs -f
```

Point your browser to [Frontend](http://localhost:8080/) or [Backend](http://localhost:5000/).
Login with admin@example.com/Sekrit


#### Non-first run
As repos are downloaded and data is loaded, the following is enough:
```
$ vagrant up # OPTIONAL: needed only to run provision
$ docker-compose start
$ docker-compose logs -f
```

If you will not need to test provisioning, you don't need to run `vagrant up`. Also not needed if you use existing machines to provision.


### Project components overview
![One Love](https://github.com/one-love/one-love/blob/master/onelove.png)

### Contributing
For developers wanting to contribute, there's [contributors page](doc/contributing.md).

### Use Cases
For use cases, there's a [use cases page](use_cases/README.md).
