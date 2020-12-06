#!/bin/bash -e

# ubuntu:20.04
sed -i.bak -e "s%http://archive.ubuntu.com/ubuntu/%http://ftp.jaist.ac.jp/pub/Linux/ubuntu/%g" /etc/apt/sources.list
apt-get update \
apt-get dist-upgrade -y \
apt-get install -y sudo git make gnupg2 python3 python3-pip net-tools\
rm -rf /var/lib/apt/lists/*

# install mininet
git clone https://github.com/basd4g/mininet.git /root/mininet \
   && cd /root/mininet \
   && apt-get update \
   && ./util/install.sh -nfv \
   && rm -rf /var/lib/apt/lists/*

apt-get remove -y openvswitch-common openvswitch-switch openvswitch-pki openvswitch-testcontroller
git clone https://github.com/basd4g/ovs.git /root/ovs \
   && cd /root/ovs \
   && ./boot.sh \
   && ./configure --prefix=/usr --localstatedir=/var --sysconfdir=/etc \
   && make \
   && make install\

git clone https://github.com/basd4g/ryu.git /root/ryu \
   && cd /root/ryu \
   && pip3 install .
