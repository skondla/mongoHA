#*****************************************************#
#Created:10/30/2015                                   #
#Author:  Sudheer Kondla, sudheer.kondla@gmail.com    #
#*****************************************************#
#!/bin/bash

mongod=`/usr/bin/mongod`

#Stop all mongo Processes

mongod --dbpath /apps/data/replshard/test/rs0-2 --shutdown &

#Remove lock files


rm -f /apps/data/replshard/test/rs0-2/mongod.lock

find /apps/data/replshard/test -name "mongod.lock" -print

#Remove / Stop mongos routers

ps -ef|grep mongo | awk '{print $2}' | xargs kill -9
rm -f /apps/data/log/mongo*.*
