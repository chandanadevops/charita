#!/bin/bash

#this script for backup 

LOG_DIR='/home/devops/training/bash/test2'
BACK_up='/home/devops/training/bash/l_back_up'

mkdir -p $BACK_up

for i in `cat bp.text`;

do 

if [ -f $LOG_DIR/$i ];

then
  
  echo  "cp $i to l_back_up"

  cp $LOG_DIR/$i $BACK_up

else 

 echo "$i files does not exit" 

fi
done
echo
echo

echo "Zipping log files"
tar -czvf l_back_up.tgz l_back_up

echo
echo

echo "Backup completed successfully"





































