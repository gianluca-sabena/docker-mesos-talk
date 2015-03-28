#!/bin/bash
#
# Based on https://linux.web.cern.ch/linux/centos7/docs/rhel/Red_Hat_Enterprise_Linux-7-Resource_Management_and_Linux_Containers_Guide-en-US.pdf
#

echo " - create cgroup: cgcreate -g cpu:/hightcpu - 2/3 cpu share"
cgcreate -g cpu:/hightcpu
cgset -r cpu.shares=2048 hightcpu
echo " - create cgroup: cgcreate -g cpu:/lowcpu - 1/3 cpu share"
cgcreate -g cpu:/lowcpu
cgset -r cpu.shares=1024 lowcpu 
