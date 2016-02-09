#!/bin/bash
# Installing build tools here because Fedora 22 will not do so during kickstart
dnf -y install kernel-headers-$(uname -r) kernel-devel-$(uname -r) gcc make perl
yum -y install gcc dkms "kernel-devel-uname-r == $(uname -r)"
