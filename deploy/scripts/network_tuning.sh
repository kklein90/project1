#!/bin/bash

# Disable tcp_slow_start
sudo sysctl -w net.ipv4.tcp_slow_start_after_idle=0

# Decrease congestion window length and increase outgoing queue.
echo '/sbin/ip route change $(ip route show | grep -i default | head -n1) initcwnd 10' | sudo tee --append /etc/rc.local
echo '/sbin/ip route change $(ip route show | grep -i default | head -n1) initrwnd 10' | sudo tee --append /etc/rc.local
echo '/sbin/ifconfig eth0 txqueuelen 1500' | sudo tee --append /etc/rc.local
