#!/bin/bash	

if [ "$#" -eq 4 ]
then
    scp -i $4  $1 $3@$2:~/ 
else 
    echo "Usage: 0-transfer_file PATH_TO_FILE IP USERNAME PATH_TO_SSH_KEY"
    exit 1
fi    