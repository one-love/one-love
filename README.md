[![Stories in Ready](https://badge.waffle.io/one-love/one-love.png?label=ready&title=Ready)](https://waffle.io/one-love/one-love)
One Love
========

### Requirements and development setup
- [Docker Engine](https://docs.docker.com/engine/installation/)
  - Every repo uses docker image/container
- [Docker Compose](https://docs.docker.com/compose/)
  - To connect containers. Usually `pip install docker-compose` is enough.

### First run
Clone this repo and `cd` into it. The process will take a while and should give
you fully configured Docker environment.

    $ ./download-repos.sh
    $ docker-compose up -d
    $ docker-compose run --rm backend bin/load_data.sh
    $ docker-compose logs -f

Point your browser to [Frontend](http://localhost:8080/) or [Backend](http://localhost:5000/).
Login with admin@example.com/Sekrit


### Non-first run
As repos are downloaded and data is loaded, the following is enough:

    $ docker-compose start
    $ docker-compose logs -f


### Project components overview
![One Love](https://github.com/one-love/one-love/blob/master/onelove.png)
