---
- name: PROJECT provisioning
  hosts: PROJECT
  roles:
    - common
    - mongodb
    - python
    - node

- name: PROJECT localhost provisioning
  hosts: localhost
  roles:
    - localhost
