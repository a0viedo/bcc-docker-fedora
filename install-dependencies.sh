#!/bin/bash

## Install BCC tools
echo -e "[iovisor]\nbaseurl=https://repo.iovisor.org/yum/nightly/f`rpm -q --queryformat '%{VERSION}\n' fedora-release`/\$basearch\nenabled=1\ngpgcheck=0" | tee /etc/yum.repos.d/iovisor.repo > /dev/null

## Install kernel-devel for the current kernel version from koji
URL='https://kojipkgs.fedoraproject.org//packages/kernel/'
KERNELVERSION=`uname -r`
IFS='-' read -a array <<< "$KERNELVERSION"
COMPLETEURL="$URL${array[0]}/${array[1]/.`uname -i`/}/`uname -i`/kernel-devel-$KERNELVERSION.rpm"

dnf install -y bcc-tools $COMPLETEURL
