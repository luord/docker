#!/bin/bash -ex

apt update
apt install -y wget gnupg apt-transport-https

wget --quiet -O - https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
echo "https://packages.cloud.google.com/apt cloud-sdk-stretch main" >> /etc/apt/sources.list

apt update
apt install -y --no-install-recommends google-cloud-sdk

apt purge -y wget gnupg apt-transport-https
apt autoremove --purge -y

apt clean
apt autoclean

rm -rf /var/lib/apt/lists/*
rm -rf /var/cache/*
