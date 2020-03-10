#!/bin/bash

sudo yum -y clean all

# Remove traces of mac address from network configuration
sudo sed -i /HWADDR/d /etc/sysconfig/network-scripts/ifcfg-eth0
sudo rm -rf /etc/udev/rules.d/70-persistent-net.rules
