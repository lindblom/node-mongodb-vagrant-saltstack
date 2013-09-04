#!/bin/bash

MONGO_VERSION=2.4.6

wget http://fastdl.mongodb.org/linux/mongodb-linux-x86_64-$MONGO_VERSION.tgz
tar -zxf mongodb-linux-x86_64-$MONGO_VERSION.tgz

cd mongodb-linux-x86_64-$MONGO_VERSION
cp bin/* /usr/local/bin