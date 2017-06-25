#!/bin/bash -ex

apt update
apt install -y --no-install-recommends python3-pip python3-setuptools python3-wheel python3-venv

apt clean
apt autoclean

rm -rf /var/lib/apt/lists/*
rm -rf /var/cache/*
