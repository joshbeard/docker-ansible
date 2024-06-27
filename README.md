# ansible

A Docker image with [Ansible](https://www.ansible.com/) installed from
[pip](https://pypi.org/project/ansible/) and a few helpful dependencies.

This image is built from the [python:3.x-slim](https://hub.docker.com/_/python)
image.

* DockerHub image: `joshbeard/ansible`
* GitHub image: `ghcr.io/joshbeard/ansible`

## Project Resources

* Source Repository: <https://github.com/joshbeard/docker-ansible>
* `Dockerfile`: <https://github.com/joshbeard/docker-ansible/blob/master/Dockerfile>
* Docker Hub: <https://hub.docker.com/r/joshbeard/ansible>

## Tags

* `10.1.0`, `10`, `latest` (current)
* `9.7.0`, `9` (end of life November 2024)
* [See all tags](https://hub.docker.com/r/joshbeard/ansible/tags)

Refer to the [Tag End of Life and Deletion](#tag-end-of-life-and-deletion)
section below for information about deprecated image tags.

### Ansible Release Notes

* [Ansible v10 Release Notes](https://github.com/ansible-community/ansible-build-data/blob/main/10/CHANGELOG-v10.rst)
* [Ansible v9 Release Notes](https://github.com/ansible-community/ansible-build-data/blob/main/9/CHANGELOG-v9.rst)
* [Ansible Releases and Maintenance](https://docs.ansible.com/ansible/latest/reference_appendices/release_and_maintenance.html)
* [Ansible Announcements Google Group](https://groups.google.com/g/ansible-announce)
* [Ansible package on PyPI](https://pypi.org/project/ansible/)

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

## Tag End of Life and Deletion

This Docker image will maintain tags that are supported upstream, as
listed in the [Ansible Releases and Maintenance](https://docs.ansible.com/ansible/latest/reference_appendices/release_and_maintenance.html)
document.

The following tags are for versions that have reached end of life and will be
[automatically](https://github.com/joshbeard/docker-hub-tag-delete) deleted on
the specified date.

<!-- BEGIN deletion_table -->
| Tag        | Deletion Date
| ---------- | ----------------------
| `8`, `8.*` | November 30, 2024
| `9`, `9.*` | November 30, 2024
<!-- END deletion_table -->
