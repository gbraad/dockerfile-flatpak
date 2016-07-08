#!/bin/bash

# Doing this in a separate script lets us do it step by step while using a
# single docker layer.

# Install dependencies
dnf install -y \
    flatpak \
    ansible \
    python2-dnf

ansible-playbook /tmp/install-flatpak.yml
ansible-playbook /tmp/create-flatpak-hello.yml

# Clean up
dnf clean all
