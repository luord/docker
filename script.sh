#!/bin/bash -ex

apt update
apt install -y wget gnupg apt-transport-https

wget --quiet -O - https://toolbelt.heroku.com/apt/release.key | apt-key add -
echo "http://toolbelt.heroku.com/ubuntu ./" >> /etc/apt/sources.list

apt update
apt install -y --no-install-recommends heroku-toolbelt ruby

apt purge -y wget gnupg apt-transport-https
apt autoremove --purge -y

apt clean
apt autoclean

rm -rf /var/lib/apt/lists/*
rm -rf /var/cache/*
