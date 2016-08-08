#!/usr/bin/env bash
set -e



# Set cwd
unset CDPATH
cd "$( dirname "${BASH_SOURCE[0]}" )"


# Orthanc
ORTHANC_VERSION=Orthanc-1.1.0
cd ~
curl http://www.orthanc-server.com/downloads/get.php?path=/orthanc/$ORTHANC_VERSION.tar.gz | tar xz
mkdir -p ~/OrthancBuild
cd ~/OrthancBuild
cmake -DSTATIC_BUILD=ON -DCMAKE_BUILD_TYPE=Release ~/$ORTHANC_VERSION
make


echo "Tests completed without error."
