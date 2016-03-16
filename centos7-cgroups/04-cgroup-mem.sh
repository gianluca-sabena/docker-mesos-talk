#!/bin/bash
#
# Based on https://linux.web.cern.ch/linux/centos7/docs/rhel/Red_Hat_Enterprise_Linux-7-Resource_Management_and_Linux_Containers_Guide-en-US.pdf
#
echo " - create memory cgroup 128 MB"
sudo cgcreate -g memory:lowmem
sudo cgset -r memory.limit_in_bytes=128M lowmem
sudo cgset -r memory.memsw.limit_in_bytes=128M lowmem
echo " - create memory cgroup 256 MB"
sudo cgcreate -g memory:hightmem
sudo cgset -r memory.limit_in_bytes=256M hightmem
sudo cgset -r memory.memsw.limit_in_bytes=256M hightmem

echo " - compile mem-alloc.c"
sudo yum install gcc
sudo gcc mem-alloc.c -o mem-alloc
