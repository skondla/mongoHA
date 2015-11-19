#!/bin/bash
#cd ~/mongoLab/data/eb/custComplaints
CURRDIR=`pwd`
#files=`ls -ltr *.js | awk '{print $9}'`

#echo "Files:
#$files"

for files in `ls -ltr Chicago*.csv | awk '{print $9}'` 
do
collection=$(echo $files | cut -f 1 -d '.')
mongoimport -d $collection -c $collection --type csv --file $files --headerline
echo "Loading of $files into $collection collection is completed"
done
