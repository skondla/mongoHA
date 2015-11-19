gdata6 admin]$ mongo --host bigdata6 --port 27026
MongoDB shell version: 3.0.6
connecting to: bigdata6:27026/test
rs0:PRIMARY> exit
bye
[hdfs@bigdata6 admin]$ mongo --host bigdata5 --port 27025
MongoDB shell version: 3.0.6
connecting to: bigdata5:27025/test
rs0:SECONDARY> exit
bye
[hdfs@bigdata6 admin]$ mongo --host bigdata4 --port 27024
MongoDB shell version: 3.0.6
connecting to: bigdata4:27024/test
rs0:SECONDARY> 

