#!/bin/bash -ex

apt update
apt install -y wget gnupg apt-transport-https

wget --quiet -O - https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -
echo "deb https://deb.nodesource.com/node_6.x jessie main" >> /etc/apt/sources.list

apt update
apt install -y --no-install-recommends nodejs

apt purge -y wget gnupg apt-transport-https
apt autoremove --purge -y

apt clean
apt autoclean

rm -rf /var/lib/apt/lists/*
rm -rf /var/cache/*
