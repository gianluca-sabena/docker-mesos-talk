#!/bin/bash
#
# Based on https://linux.web.cern.ch/linux/centos7/docs/rhel/Red_Hat_Enterprise_Linux-7-Resource_Management_and_Linux_Containers_Guide-en-US.pdf
#

echo " - start 1 mem allocator in hightmem - 256 MB"
sudo cgexec -g memory:hight ./mem-alloc &
