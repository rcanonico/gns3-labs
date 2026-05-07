#!/bin/sh
sysctl -w net.mpls.conf.lo.input=1
sysctl -w net.mpls.conf.eth1.input=1
sysctl -w net.mpls.conf.eth2.input=1
sysctl -w net.mpls.platform_labels=1048575
ip -f mpls route add 100 as 200 via inet 10.0.1.1
ip -f mpls route add 300 as 400 via inet 10.0.0.1
