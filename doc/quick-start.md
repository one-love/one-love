Quick Start
===========

### Requirements and development setup
- [Docker Engine](https://docs.docker.com/engine/installation/)
  - Every repo uses docker image/container
- [Docker Compose](https://docs.docker.com/compose/)
  - To connect containers. Usually `pip install docker-compose` is enough.


### First run
Clone this repo and `cd` into it. The process will take a while and should give
you fully configured Docker environment.

<pre>
$ git clone <b>--recursive</b> https://github.com/one-love/one-love.git
$ vagrant up # OPTIONAL: needed only to run provision
$ docker-compose up -d
$ docker-compose run --rm backend bin/load_data.sh
$ docker-compose logs -f
</pre>

Point your browser to [Frontend](http://localhost:8080/) or [Backend](http://localhost:5000/).
Login with admin@example.com/Sekrit


### Non-first run
As repos are downloaded and data is loaded, the following is enough:
```
$ vagrant up # OPTIONAL: needed only to run provision
$ docker-compose start
$ docker-compose logs -f
```

If you will not need to test provisioning, you don't need to run `vagrant up`. Also not needed if you use existing machines to provision.


### Project components overview
![One Love](https://github.com/one-love/one-love/blob/master/onelove.png)
