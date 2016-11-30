#!/bin/bash -ex

apt update
apt install -y --no-install-recommends ruby

apt clean
apt autoclean

rm -rf /var/lib/apt/lists/*
rm -rf /var/cache/*
