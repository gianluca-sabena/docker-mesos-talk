#!/bin/bash
#
# Based on https://linux.web.cern.ch/linux/centos7/docs/rhel/Red_Hat_Enterprise_Linux-7-Resource_Management_and_Linux_Containers_Guide-en-US.pdf
#
echo ""
echo " * create cgroup: cgcreate -g cpu:/hightcpu - 2/3 cpu share"
sudo cgcreate -g cpu:/hightcpu
sudo cgset -r cpu.shares=2048 hightcpu
echo " * create cgroup: cgcreate -g cpu:/lowcpu - 1/3 cpu share"
sudo cgcreate -g cpu:/lowcpu
sudo cgset -r cpu.shares=1024 lowcpu
echo " * Check cpu cgroup - hightcpu "
sudo ls /sys/fs/cgroup/cpu/hightcpu
echo " * Check cpu cgroup - lowcpu "
sudo ls /sys/fs/cgroup/cpu/lowcpu
echo " * "
