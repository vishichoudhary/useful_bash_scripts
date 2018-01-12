#!/bin/bash
if [ ! "$3" ]
then 
    grep -i -nr "$1" "$2"
else 
    grep -i -nr "$1" "$2" "--exclude-dir=$3"
fi
