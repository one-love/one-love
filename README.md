One Love
========

Ever wanted a "one click" solution to Ansible provisioning which is hosting
provider agnostic with ability to migrate your whole machine between different
providers? One Love project aims to provide this. First goal is Wordpress and
AWS, other software and providers following right after.

This project is not substitute for Ansible Tower, although it might have some
of it's features in the future. The workflow is simple:

- Use [Django interface](https://github.com/mekanix/one-love-web) to send message to worker with the link to the repo
containing ansible playbook. That repo is by default one of One Love ones, but
you're free to use your own.
- Use [workers](https://github.com/mekanix/one-love-workers) to clone that repo and run the playbook.

To test:

    vagrant up --provision
    vagrant ssh
    vex workers /vagrant/workers/sender.py
    vex workers /vagrant/workers/worker.py
