#/usr/bin/env bash

set -eux

BUILD_DIR="_build"
POTFIT_REPO="https://github.com/potfit/potfit.git"
POTFIT_RELEASE="0.7.1"
POT_OPTION="potfit_mpi_tersoff_apot"

if [ -d $BUILD_DIR ]; then
  rm -rf $BUILD_DIR
fi

git clone $POTFIT_REPO $BUILD_DIR
cd $BUILD_DIR
git checkout tags/$POTFIT_RELEASE

sed -i .bak -e 's/mpicc/mpiicc/' -e 's/^BIN_DIR/#&/' Makefile

module load intel

make $POT_OPTION
cp $POT_OPTION ../

