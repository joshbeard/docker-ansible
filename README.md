# ansible

A Docker image with [Ansible](https://www.ansible.com/) installed from
[pip](https://pypi.org/project/ansible/) and a few helpful dependencies.

This image is built from the [python:3.x-slim](https://hub.docker.com/_/python)
image.

## Project Resources

* Source Repository: <https://github.com/joshbeard/docker-ansible>
* `Dockerfile`: <https://github.com/joshbeard/docker-ansible/blob/master/Dockerfile>
* Docker Hub: <https://hub.docker.com/r/joshbeard/ansible>

## Tags

* `6.0.0`, `6`, `latest`
* `5.10.0`, `5`
* [More tags](https://hub.docker.com/r/joshbeard/ansible/tags)

### Ansible Release Notes

* [Ansible v6 Release Notes](https://github.com/ansible-community/ansible-build-data/blob/main/6/CHANGELOG-v6.rst)
* [Ansible v5 Release Notes](https://github.com/ansible-community/ansible-build-data/blob/main/5/CHANGELOG-v5.rst)
* [Ansible Announcements Google Group](https://groups.google.com/g/ansible-announce)

## Running

The following example demonstrates providing a private SSH key to use with
Ansible and running a playbook:

```shell
docker run --rm -it \
  -v ansible-ssh-private-key:/home/ansible/.ssh/id_rsa \
  -v ${PWD}:/playbook \
  -w /playbook \
  joshbeard/ansible:latest \
  ansible-playbook -i inventory.ini site.yml
```

A user named `ansible` is created with a UID/GID of `1055` and a home directory
at `/home/ansible`.

## Maintainers

* Josh Beard, <https://joshbeard.me>
