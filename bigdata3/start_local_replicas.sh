#*****************************************************#
#Created:10/30/2015                                   #
#Author:  Sudheer Kondla, sudheer.kondla@gmail.com    #
#*****************************************************#
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

nohup mongod --configsvr --dbpath /apps/data/replshard/test/rs0-3 --port 27033 --bind_ip bigdata3 -v &

sleep 5

#start mongos routers

nohup mongos --configdb bigdata3:27033  > /apps/data/log/mongo.mongos.27033.log &

sleep 5
