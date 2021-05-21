# =============================================================================
# Dockerfile for building a base Ansible image
# Ansible itself is installed via `pip` and the package is specified in the
# requirements.txt file.
# Additional tools are also provided in this image.
# This is based on Ubuntu or Debian
# =============================================================================
ARG src_image_name=debian
ARG src_image_tag=buster-slim

FROM ${src_image_name}:${src_image_tag}

RUN set -eux; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
    bash \
    cargo \
    curl \
    jq \
    libssl-dev \
    openssh-client \
    python3-openssl \
    python3-psycopg2 \
    python3-pip \
    python3-setuptools \
    rsync \
    rustc \
    unzip \
    zip \
    ; \
    rm -rf /var/lib/apt/lists/*

ARG USER_UID=1055
ARG USER_GID=1055
RUN groupadd -g $USER_GID ansible \
  && useradd -m \
  -u $USER_UID \
  -g $USER_GID \
  --home-dir /home/ansible \
  --shell /sbin/nologin \
  ansible

ARG ansible_version=4.0.0
RUN pip3 install wheel && pip3 install ansible==${ansible_version}

USER ansible
RUN mkdir /home/ansible/.ssh
WORKDIR /home/ansible
