#!/bin/bash -ex
cd ~
wget https://github.com/openstack-dev/devstack/archive/stable/juno.zip
unzip juno.zip
cd ~/devstack-stable-juno
cp /vagrant_data/local.conf ./local.conf
cp -a /vagrant_data/extras.d/* ./extras.d/
