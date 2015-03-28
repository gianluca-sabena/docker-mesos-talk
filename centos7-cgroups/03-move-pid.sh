#!/bin/bash
#
# Based on https://linux.web.cern.ch/linux/centos7/docs/rhel/Red_Hat_Enterprise_Linux-7-Resource_Management_and_Linux_Containers_Guide-en-US.pdf
#

echo " - move a pid to hightcpu"
cgclassify -g cpu:hightcpu $1
