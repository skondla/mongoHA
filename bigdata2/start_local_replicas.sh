#!/bin/bash

mongod=`/usr/bin/mongod`
#mongos=`/apps/mongodb3/bin/mongos`
mongo=`/usr/bin/mongo`
mongos=`/usr/bin/mongos`

#Clean up all before start

find /apps/data/replshard/test -name "mongod.lock" -print | xargs rm -f
#Remove / Stop mongos routers
ps -ef|grep mongo | awk '{print $2}' | xargs kill -9
rm -f /apps/data/log/mongo*.*


#Start Config Servers.

nohup mongod --configsvr --dbpath /apps/data/replshard/test/rs0-2 --port 27032 --bind_ip bigdata2 -v &

sleep 5

#start mongos routers

nohup mongos --configdb bigdata2:27032  > /apps/data/log/mongo.mongos.27032.log &

sleep 5
