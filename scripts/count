#!/bin/bash

echo "What to count"
echo " 1. for files"
echo " 2. for dirs"
read choice
if [ "$choice" == "1" ]
then
    countfiles
elif [ "$choice" == "2" ]
then 
    countdirs
else
    printf "Total are " && ls | wc -l
fi
