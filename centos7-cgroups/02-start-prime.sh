#!/bin/bash
#
# Based on https://linux.web.cern.ch/linux/centos7/docs/rhel/Red_Hat_Enterprise_Linux-7-Resource_Management_and_Linux_Containers_Guide-en-US.pdf
#

echo " * start 1 prime number generator in hightcpu"
sudo cgexec -g cpu:hightcpu /usr/bin/python prime.py 1000000 1010000 &
echo " * start 2 prime number generator in lowcpu"
sudo cgexec -g cpu:lowcpu /usr/bin/python prime.py 1000000 1010000 &
sudo cgexec -g cpu:lowcpu /usr/bin/python prime.py 1000000 1010000 &
