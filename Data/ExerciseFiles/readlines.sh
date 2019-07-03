#!/bin/bash

# this script produces the lines of the input file one by one
# the name of the file to process must be given as the
# first ARGUMENT to this script

if [ $# -ne 1 ]
then
  echo "You have to provide a filename as single argument to this script."
  exit 1
fi

echo "You want me to work on the file $1"
inputfile=$1

counter=1 # this is my line counter

while read -r current_line
do
  echo "${counter} ${current_line}"
  (( counter += 1 ))


done < ${inputfile}
