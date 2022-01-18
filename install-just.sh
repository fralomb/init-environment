#!/bin/bash

# download and extract `just` to `.just`
curl --proto '=https' --tlsv1.2 -sSf https://just.systems/install.sh | bash -s -- --to /usr/bin

# just should now be executable
just --version

# https://github.com/watchexec/watchexec/releases/download/cli-v1.17.1/watchexec-1.17.1-i686-unknown-linux-musl.deb
