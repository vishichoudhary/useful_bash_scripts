#!/bin/bash

# This script removes ^M characters from files recursively.
# Pre-requisites: dos2unix utility (see below to install)
# apt-get install dos2unix
# yum install dos2unix
# Paramaters: PATH where the files(with ^M) are present 
# Usage ./remove_ctrl_M.sh <PATH>

usage () { 
   printf "USAGE:"
   printf "   ./remove_ctrl_M.sh <PATH> \n"
   printf "Where PATH is the location where files with ^M are present \n"
   printf "If it is current folder please specify . or absolute path \n"
}

remove_ctrlm () {
# temp_file is a variable(randomised)(name of file)
# This file contains names of all files which may contain ctrl-m
# randomise file name to not modify any existing file on disk
RANDOM=`date +%s`
temp_file=listOfFiles$RANDOM
#ls -1R ${location} > ${temp_file}
find ${location} -type f -name "*" > ${temp_file}
for file in `cat ${temp_file}`
do
    dos2unix "$file"
done
rm -rf ${temp_file}
}
location=$1
usage
remove_ctrlm
