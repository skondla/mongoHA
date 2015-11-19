#*****************************************************#
#Created:10/30/2015                                   #
#Author:  Sudheer Kondla, sudheer.kondla@gmail.com    #
#*****************************************************#
#!/bin/bash
cd ~
./dcli -g mynodes ". /home/hdfs/mongoLab/admin/start_local_replicas.sh"
./dcli -g mynodes "ps -ef|grep mongo"
