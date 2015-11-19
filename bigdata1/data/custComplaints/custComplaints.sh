#*****************************************************#
#Created:10/30/2015                                   #
#Author:  Sudheer Kondla, sudheer.kondla@gmail.com    #
#*****************************************************#
#!/bin/bash
#cd ~/mongoLab/data/eb/custComplaints
CURRDIR=`pwd`
#files=`ls -ltr *.js | awk '{print $9}'`

#echo "Files:
#$files"

for files in `ls -ltr *.csv | awk '{print $9}'` 
do
collection=$(echo $files | cut -f 1 -d '.')
mongoimport -d custComplaints -c $collection --type csv --file $files --headerline
echo "Loading of $files into $collection collection is completed"
done
