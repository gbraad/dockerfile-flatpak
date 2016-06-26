#!/bin/bash

# Doing this in a separate script lets us do it step by step while using a
# single docker layer.

# Install dependencies
dnf install -y \
    flatpak

# Setup remotes
cd /tmp
curl -sSL https://sdk.gnome.org/keys/gnome-sdk.gpg > gnome-sdk.gpg
flatpak remote-add --gpg-import=gnome-sdk.gpg gnome https://sdk.gnome.org/repo/
flatpak remote-add --gpg-import=gnome-sdk.gpg gnome-apps https://sdk.gnome.org/repo-apps/

# Clean up
dnf clean all
