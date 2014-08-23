One Love
========

Ever wanted a "one click" solution to Ansible provisioning which is hosting
provider agnostic with ability to migrate your whole machine between different
providers? One Love project aims to provide this. First goal is Wordpress and
AWS, other software and providers following right after.

This project is not substitute for Ansible Tower, although it might have some
of it's features in the future. The workflow is simple. Use [Django interface](https://github.com/one-love/web) to send message to worker with the link to the repo containing ansible playbook. That repo is by default one of One Love ones, but
you're free to use your own.

To test uppon cloning:

    vagrant up
    vagrant provision
    vagrant ssh
    sudo /etc/init.d/uwsgi restart
    supervisorctl restart all
    tail -f /var/log/one-love/celery.log # to watch the workers
    
Point your browser to [Vagrant IP](http://192.168.33.33/provision/)
