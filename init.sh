#!/bin/bash -e

# ubuntu:20.04
apt-get update
apt-get dist-upgrade -y
apt-get upgrade -y
apt-get install -y sudo git make gnupg2 python3 python3-pip net-tools

# install mininet
cd
git clone https://github.com/basd4g/mininet.git
cd mininet
./util/install.sh -nfv

cd
apt-get remove -y openvswitch-common openvswitch-switch openvswitch-pki openvswitch-testcontroller
git clone https://github.com/basd4g/ovs.git
cd ovs
./boot.sh
./configure --prefix=/usr --localstatedir=/var --sysconfdir=/etc
make
make install

git clone https://github.com/basd4g/ryu.git
cd ryu
pip3 install .
