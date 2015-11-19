#!/bin/bash

mongod=`/usr/bin/mongod`
mongos=`/usr/bin/mongod`
mongo=`/usr/bin/mongod`

#Clean up all before start

find /apps/data/replshard/test -name "mongod.lock" -print | xargs rm -f
#Remove / Stop mongos routers
ps -ef|grep mongo | awk '{print $2}' | xargs kill -9
rm -f /apps/data/log/mongo*.*


#creating mongodb replicas

nohup mongod --bind_ip bigdata5 --port 27025 --dbpath /apps/data/replshard/test/rs0-5 --replSet rs0 --smallfiles --oplogSize 128 --shardsvr > /apps/data/log/mongo.rs0-5.repl.log &
