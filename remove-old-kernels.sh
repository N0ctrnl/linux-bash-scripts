#!/bin/bash
# This script will remove older kernel and kernel-devel packages from a RHEL or RHEL-based system
yum remove $(rpm -qa | egrep kernel-'(2|3|PAE|dev)' | sort -n | grep -v `uname -r| sed 's/PAE//'` )
