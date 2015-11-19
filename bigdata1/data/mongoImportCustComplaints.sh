#!/bin/bash
mongoimport --db custComplaints --collection Consumer_Complaints --type json --file custComplaints.json
#mongoimport --db custComplaints2 --collection virtualAccount --type json --file virtualAccount.json
#mongoimport --db custComplaints2 --collection roles --type json --file roles.json
#mongoimport --db custComplaints2 --collection users --type json --file users.json
#mongoimport --db custComplaints2 --collection userRole --type json --file userRole.json
#mongoimport --db custComplaints2 --collection resourceMaster --type json --file resourceMaster.json
#mongoimport --db custComplaints2 --collection roleResource --type json --file roleResource.json
#mongoexport --db smartAccount2 --collection smartAccount --out smartAccount.json
