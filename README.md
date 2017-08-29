Ansible Role Docker
=========

[![Build Status](https://travis-ci.org/darkraiden/ansible-role-docker.svg?branch=master)](https://travis-ci.org/darkraiden/ansible-role-docker)

An Ansible Role that installs Docker on Debian and RedHat systems.

Requirements
------------

None

Dependencies
--------------

* [darkraiden.ansible-pip](https://galaxy.ansible.com/darkraiden/ansible-pip)

Role Variables
--------------

Available variables are listed below, along with default values (see `defaults/main.yml`):

```
docker_pip_package: docker
```

The name of the docker pip package.

```
docker_package_name: docker-engine
```

The name of the docker daemon to be installed.

```
docker_group_name: docker
```

The docker group name.

```
docker_users: []
```

A list of users to add to the docker group to use it without `sudo`.

```
docker_compose: True
docker_compose_version: "1.11.2"
docker_compose_url: https://github.com/docker/compose/releases/download/{{ docker_compose_version }}/docker-compose-Linux-x86_64
```

When `docker_compose` is true, the role will install `docker-compose` using the defined url and version.

Test Kitchen
--------------

### Install Deps

```
$ bundle
```

### VMs

This kitchen configuration comes with different VMs:

* centos7
* centos6
* xenial
* trusty

If you want to test the role using all of those machines, just run the commands below as they are. If you want to test the role on one system only, append to the commands below the VM name.

e.g.

```
$ bundle exec kitchen converge centos7
```

To converge the `centos7` VM only.

### Create the VM

```
$ bundle exec kitchen create
```

### Converge your role

```
$ bundle exec kitchen converge
```

### Run serverspec tests

```
$ bundle exec kitchen verify
```

**NB**: To run `verify` the VM must be converged first.

### Destroy the VM

```
$ bundle exec kitchen destroy
```

### Run Create/Converge/Verify/Destroy in one command

```
$ bundle exec kitchen test
```

### Write your tests

You can write your own test by adding a new file or editing the existing one living in the `test/integration/docker/serverspec/localhost` directory. More info about how to write serverspec test can be found [here](http://serverspec.org/).

Example Playbook
----------------

```
    - hosts: all
      roles:
         - darkraiden.ansible-docker
```

License
-------

BSD

Author Information
------------------
This role was created in 2017 by [Davide Di Mauro](https://github.com/darkraiden).
