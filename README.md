# ansible

A Docker image with [Ansible](https://www.ansible.com/) installed from
[pip](https://pypi.org/project/ansible/).

This image is built from the [debian:buster-slim](https://hub.docker.com/_/debian)
image.

* Source Repository: <https://gitlab.com/jbeard.dev/docker-images/jbeard-ansible>
* Docker Hub: <https://hub.docker.com/r/joshbeard/ansible>

## Tags

* `4.0.0`, `latest`
* `3.4.0`
* `2.10.7`

## Running

The following example demonstrates providing a private SSH key to use with
Ansible and running a playbook:

```shell
docker run --rm -it \
  -v ansible-ssh-private-key:/home/ansible/.ssh/id_rsa \
  -v ${PWD}:/playbook \
  -w /playbook \
  joshbeard/ansible:4.0.0 \
  ansible-playbook -i inventory.ini site.yml
```

A user named `ansible` is created with a UID/GID of `1055`
