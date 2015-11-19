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
rm -f ~/mongoLab/admin/nohup.out


#Start Config Servers.

nohup /usr/bin/mongod --configsvr --dbpath /apps/data/replshard/test/rs0-1 --port 27031 --bind_ip bigdata1 -v &

sleep 5

#start mongos routers

nohup /usr/bin/mongos --configdb bigdata1:27031  > /apps/data/log/mongo.mongos.27031.log &

sleep 5
