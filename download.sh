#!/bin/sh
. $(dirname $0)/path.sh

if [ -f cif2cell_$VERSION_BASE.orig.tar.gz ]; then
  exit 127
fi
wget https://sourceforge.net/projects/cif2cell/files/cif2cell-$VERSION_BASE.tar.gz
tar zxvf cif2cell-$VERSION_BASE.tar.gz
mv -f cif2cell-$VERSION_BASE cif2cell_$VERSION_BASE
tar zcvf cif2cell_$VERSION_BASE.orig.tar.gz cif2cell_$VERSION_BASE
rm -rf cif2cell_$VERSION_BASE cif2cell-$VERSION_BASE.tar.gz
