#!/bin/sh

PODGET_VERSION=0.7.8

# Dowload and extract podget
fetch http://downloads.sourceforge.net/project/podget/podget/podget-"$PODGET_VERSION"/podget-"$PODGET_VERSION".tar.gz
tar -xf podget-"$PODGET_VERSION".tar.gz
cd podget-"$PODGET_VERSION"

# Change sed to gsed
sed -i '.orig' 's/sed/gsed/g' podget

# Install
sudo gmake prefix=/usr/local all install
