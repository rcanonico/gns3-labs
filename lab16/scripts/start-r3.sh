#!/bin/sh
sysctl -w net.mpls.conf.lo.input=1
sysctl -w net.mpls.conf.eth1.input=1
sysctl -w net.mpls.conf.eth2.input=1
sysctl -w net.mpls.platform_labels=1048575
ip route add 10.0.0.0/30 via 10.0.1.2
ip route add 192.168.1.0/24 encap mpls 300 via inet 10.0.1.2
ip -f mpls route add 200 dev lo
