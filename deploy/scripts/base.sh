#!/bin/bash

# Security updates, install additional tools
sudo yum -y install yum-plugin-security
sudo yum -y update --security
sudo yum -y install openssh-server mlocate man vim traceroute

# Update locate db
sudo /usr/bin/updatedb

# Install root certificates
sudo yum -y install ca-certificates
