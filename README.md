# ansible

[![docker_build](https://github.com/joshbeard/docker-ansible/actions/workflows/build.yml/badge.svg)](https://github.com/joshbeard/docker-ansible/actions/workflows/build.yml)
[![Codacy Badge](https://app.codacy.com/project/badge/Grade/389718765d6840b0a2c60849578db276)](https://www.codacy.com/gh/joshbeard/docker-ansible/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=joshbeard/docker-ansible&amp;utm_campaign=Badge_Grade)
[![CodeFactor](https://www.codefactor.io/repository/github/joshbeard/docker-ansible/badge)](https://www.codefactor.io/repository/github/joshbeard/docker-ansible)
[![DeepSource](https://deepsource.io/gh/joshbeard/docker-ansible.svg/?label=active+issues&token=9CLCfY4X9cQBkbED6c4pMaFn)](https://deepsource.io/gh/joshbeard/docker-ansible/?ref=repository-badge)

A Docker image with [Ansible](https://www.ansible.com/) installed from
[pip](https://pypi.org/project/ansible/).

This image is built from the [python:3.x-slim](https://hub.docker.com/_/python)
image.

## Project Resources

* Source Repository: <https://github.com/joshbeard/docker-ansible>
* `Dockerfile`: <https://github.com/joshbeard/docker-ansible/blob/master/Dockerfile>
* Docker Hub: <https://hub.docker.com/r/joshbeard/ansible>

## Tags

* `7.1.0`, `7`, `latest`
* `6.6.0`, `6`
* [See all tags](https://hub.docker.com/r/joshbeard/ansible/tags)

Refer to the [Tag End of Life and Deletion](#tag-end-of-life-and-deletion)
section below for information about deprecated image tags.

### Ansible Release Notes

* [Ansible v6 Release Notes](https://github.com/ansible-community/ansible-build-data/blob/main/6/CHANGELOG-v6.rst)
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
| `2.10.7`   | April 24, 2023
| `3.4.0`    | April 24, 2023
| `4.0.0`    | April 24, 2023
| `5`, `5.*` | October 6, 2023
<!-- END deletion_table -->

