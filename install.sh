#!/bin/bash
curl -o $ZK_PKG.tar.gz $ZK_URL
tar xf $ZK_PKG.tar.gz
rm -f $ZK_PKG.tar.gz
mv $ZK_PKG $ZK_HOME

mkdir $ZK_DATA
