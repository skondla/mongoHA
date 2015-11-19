#!/bin/bash
cd ~
./dcli -g mynodes ". /home/hdfs/mongoLab/admin/start_local_replicas.sh"
./dcli -g mynodes "ps -ef|grep mongo"
