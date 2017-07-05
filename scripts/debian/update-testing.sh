#!/bin/sh -eux

export DEBIAN_FRONTEND=noninteractive

# change repository to testing
sed -e 's%stretch%testing%g' -i /etc/apt/sources.list

# disable updates which do not exist for testing
sed '/updates/s/^/#/' /etc/apt/sources.list

apt-get -y update
apt-get -y upgrade
apt-get -y dist-upgrade
apt-get -y autoremove
apt-get -y clean
