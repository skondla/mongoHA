#!/bin/bash

mongod=`/usr/bin/mongod`

#Stop all mongo Processes

mongod --dbpath /apps/data/replshard/test/rs0-6 --shutdown &

#Remove lock files


rm -f /apps/data/replshard/test/rs0-6/mongod.lock

find /apps/data/replshard/test -name "mongod.lock" -print

#Remove / Stop mongos routers

ps -ef|grep mongo | awk '{print $2}' | xargs kill -9
rm -f /apps/data/log/mongo*.*