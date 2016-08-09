#!/usr/bin/env bash
set -e



# Set cwd
unset CDPATH
cd "$( dirname "${BASH_SOURCE[0]}" )"


# Orthanc
if [ ! -f "~/${ORTHANC_BUILD}/Orthanc" ]; then
  cd ~
  curl http://www.orthanc-server.com/downloads/get.php?path=/orthanc/$ORTHANC_VERSION.tar.gz | tar xz
  mkdir -p "~/$ORTHANC_BUILD"
  cd "~/$ORTHANC_BUILD"
  cmake -DSTATIC_BUILD=ON -DCMAKE_BUILD_TYPE=Release ~/$ORTHANC_VERSION
  make
else
  cd "~/$ORTHANC_BUILD"
fi

ls -al
./Orthanc





echo "Tests completed without error."
