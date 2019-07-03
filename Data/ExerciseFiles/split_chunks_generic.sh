#!/bin/bash

# this script will split the contents of a file
# into chunks of 10 lines each.
# the name of the file to process ;ust be given as the
# first ARGUMENT to this script

if [ $# -ne 1 ]
then
  echo "You have to provide a filename as single argument to this script."
  exit 1
fi

echo "You want me to work on the file $1"
inputfile=$1

# first, we count the number of lines in the file:
numlines=$(wc -l < ${inputfile})
# echo "${numlines}"

# within double-parenthesis constructs, no need for the
# dollar sign to perform variable substitution:
num_chunks=$(( numlines / 10 )) 

# numlines=5630 # DEBUG
# we need to add 1 to num_chunks iff the last digit of
# numlines is not a zero
if [ ${numlines: -1} -ne 0 ]
then
  (( num_chunks += 1 ))
fi

# echo "${num_chunks}"

for filenum in `seq 1 ${num_chunks}`
do
  # echo "${filenum}"
  tail -n +$(( 1 + 10 * (filenum-1) )) ${inputfile} | head -n 10 > chunk${filenum}.csv

done




