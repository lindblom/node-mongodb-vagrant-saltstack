#!/bin/bash

NODE_VERSION=v0.10.17

wget http://nodejs.org/dist/$NODE_VERSION/node-$NODE_VERSION-linux-x64.tar.gz
tar -zxf node-$NODE_VERSION-linux-x64.tar.gz

cd node-$NODE_VERSION-linux-x64

cp -prf bin/* /usr/local/bin/
cp -prf lib/* /usr/local/lib/
cp -prf share/* /usr/local/share/