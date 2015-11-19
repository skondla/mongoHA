#*****************************************************#
#Created:10/30/2015                                   #
#Author:  Sudheer Kondla, sudheer.kondla@gmail.com    #
#*****************************************************#
#!/bin/bash

mongod --configsvr --dbpath /apps/data/replshard/test/rs0-1 --port 27021 --bind_ip 192.168.0.121 -v &
mongod --configsvr --dbpath /apps/data/replshard/test/rs0-2 --port 27022 --bind_ip 192.168.0.122 -v &
mongod --configsvr --dbpath /apps/data/replshard/test/rs0-3 --port 27023 --bind_ip 192.168.0.123 -v &
