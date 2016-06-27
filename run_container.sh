#!/bin/bash

# Doing this in a separate script lets us do it step by step while using a
# single docker layer.

# Install dependencies
dnf install -y \
    flatpak \
    ansible \
    python2-dnf

curl -sSL https://raw.githubusercontent.com/gbraad/ansible-playbooks/master/playbooks/install-flatpak.yml -o /tmp/install-flatpak.yml
ansible-playbook /tmp/install-flatpak.yml

# Clean up
dnf clean all
