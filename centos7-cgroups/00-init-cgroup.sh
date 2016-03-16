#!/bin/bash
#
# Based on https://linux.web.cern.ch/linux/centos7/docs/rhel/Red_Hat_Enterprise_Linux-7-Resource_Management_and_Linux_Containers_Guide-en-US.pdf
#

echo " * install modules..."
sudo yum install libcgroup libcgroup-tools
echo " * probe kernel module..."
sudo modprobe netprio_cgroup
#echo " - create cgroup filesystem..."
#sudo mkdir -p  /sys/fs/cgroup/net_prio
#sudo mount -t cgroup -o net_prio none /sys/fs/cgroup/net_prio
#echo " - check... (you must see net_prio)"
#sudo lssubsys -am
#echo " * check cconfig service"
#sudo service cgconfig status
