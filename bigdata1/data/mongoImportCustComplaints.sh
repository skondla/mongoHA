#*****************************************************#
#Created:10/30/2015                                   #
#Author:  Sudheer Kondla, sudheer.kondla@gmail.com    #
#*****************************************************#
#!/bin/bash
mongoimport --db custComplaints --collection Consumer_Complaints --type json --file custComplaints.json
