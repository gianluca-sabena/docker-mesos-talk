#!/bin/bash
#
# Based on https://linux.web.cern.ch/linux/centos7/docs/rhel/Red_Hat_Enterprise_Linux-7-Resource_Management_and_Linux_Containers_Guide-en-US.pdf
#

echo " - install modules..."
#yum install libcgroup libcgroup-tools
echo " - probe kernel module..."
modprobe netprio_cgroup
echo " - create cgroup filesystem..."
mkdir -p  /sys/fs/cgroup/net_prio
mount -t cgroup -o net_prio none /sys/fs/cgroup/net_prio
echo " - check... (you must see net_prio)"
lssubsys -am
echo "start cconfig service"
service cgconfig restart

