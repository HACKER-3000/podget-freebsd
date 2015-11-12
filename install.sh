#!/bin/sh

# Dowload and extract podget
fetch https://github.com/dvehrs/podget/archive/master.zip
unzip master.zip
cd podget-master

# Change sed to gsed
sed -i '.orig' 's/sed/gsed/g' podget

# Install
sudo gmake prefix=/usr/local all install

cd -
rm master.zip
rm -rf podget-master
