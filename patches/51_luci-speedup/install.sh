#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)
 
cd $basedir

patch -p1 < $patchdir/luci_speedup.patch
sed -i 's/luci-theme-bootstrap/luci-theme-material/g' $basedir/feeds/luci/collections/luci/Makefile
