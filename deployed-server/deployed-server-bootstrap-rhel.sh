#!/bin/bash

set -eux

yum install -y \
    jq \
    python-ipaddr \
    puppet-tripleo\
    os-net-config \
    openvswitch \
    python-heat-agent* \
    openstack-selinux

ln -s -f /usr/share/openstack-puppet/modules/* /etc/puppet/modules

echo '# empty ruleset created by deployed-server bootstrap' > /etc/sysconfig/iptables
echo '# empty ruleset created by deployed-server bootstrap' > /etc/sysconfig/ip6tables
