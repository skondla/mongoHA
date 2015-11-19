#!/bin/bash
mongoexport --db custComplaints --collection Consumer_Complaints --out custComplaints.json
#mongoimport --db custComplaints --collection Consumer_Complaints --type json --file custComplaints.json
#mongoexport --db smartAccount2 --collection smartAccount --out smartAccount.json
